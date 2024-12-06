library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FSM_GameLogic is
    port(
        fsm_clk_A : in std_logic_vector(3 downto 0);
		  fsm_clk_B : in std_logic_vector(3 downto 0);
        clk_run         : in std_logic;
        clk_run1        : in std_logic;
        reset_game      : in std_logic;
        latched_clk_A_p1 : inout std_logic_vector(3 downto 0);
        latched_clk_B_p1 : inout std_logic_vector(3 downto 0);
        latched_clk_A_p2 : inout std_logic_vector(3 downto 0);
        latched_clk_B_p2 : inout std_logic_vector(3 downto 0);
        win             : inout std_logic_vector(1 downto 0);
        HEX0_sig        : out std_logic_vector(6 downto 0);
        HEX1_sig        : out std_logic_vector(6 downto 0);
        HEX2_sig        : out std_logic_vector(6 downto 0);
        HEX3_sig        : out std_logic_vector(6 downto 0);
        HEX4_sig        : out std_logic_vector(6 downto 0);
        HEX5_sig        : out std_logic_vector(6 downto 0)
    );
end FSM_GameLogic;

architecture Behavioral of FSM_GameLogic is
    signal rand_num         : std_logic_vector(3 downto 0) := (others => '0');
    signal counter          : integer := 0;
    signal enable_clk_run   : std_logic := '0';
    signal key_prev_state   : std_logic := '1';

    -- Instantiate SegDecoder for HEX0 to HEX5
    component SegDecoder
        port(
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(6 downto 0)
        );
    end component;

    signal HEX0_decoded, HEX1_decoded, HEX2_decoded, HEX3_decoded : std_logic_vector(6 downto 0);
    signal HEX4_decoded, HEX5_decoded : std_logic_vector(6 downto 0);
    
    type state_type is (Setup, WaitForStart, LatchValue, DisplayValues);
    signal current_state, next_state : state_type;

begin
    -- Main FSM process
    process(clk_run, reset_game)
    begin
        if reset_game = '1' then
            current_state <= Setup;
            enable_clk_run <= '0';
            counter <= 0;
            latched_clk_A_p1 <= (others => '0');
            latched_clk_B_p1 <= (others => '0');
        elsif rising_edge(clk_run) then
            current_state <= next_state;

            case current_state is
                when Setup =>
                    enable_clk_run <= '0';
                    counter <= 0;
                    next_state <= WaitForStart;

                when WaitForStart =>
                    if counter < to_integer(unsigned(rand_num)) then
                        counter <= counter + 1;
                    else
                        enable_clk_run <= '1'; -- Enable the clock
                        next_state <= LatchValue;
                    end if;

                when LatchValue =>
                    -- Detect key release and latch clock values
                    if key_prev_state = '1' and clk_run = '0' then
                        latched_clk_A_p1 <= fsm_clk_A;
                        latched_clk_B_p1 <= fsm_clk_B;
                        next_state <= DisplayValues;
                    end if;
                    key_prev_state <= clk_run;

                when DisplayValues =>
                    -- Display latched values and stay here unless reset
                    enable_clk_run <= '0';
                    if reset_game = '1' then
                        next_state <= Setup;
                    else
                        next_state <= DisplayValues;
                    end if;

                when others =>
                    next_state <= Setup;
            end case;
        end if;
    end process;

 

    -- Instantiate SegDecoder components
    HEX3_inst : SegDecoder port map(D => latched_clk_A_p1(3 downto 0), Y => HEX3_decoded);  
    HEX2_inst : SegDecoder port map(D => latched_clk_B_p1(3 downto 0), Y => HEX2_decoded);
	 HEX1_inst : SegDecoder port map(D => rand_num, Y => HEX1_decoded);
    HEX0_inst : SegDecoder port map(D => rand_num, Y => HEX0_decoded);
	 HEX4_inst : SegDecoder port map(D => fsm_clk_B, Y => HEX4_decoded);
    HEX5_inst : SegDecoder port map(D => fsm_clk_A, Y => HEX5_decoded);
    --HEX4_inst : SegDecoder port map(D => latched_clk_A_p2(3 downto 0), Y => HEX4_decoded);
    --HEX5_inst : SegDecoder port map(D => latched_clk_B_p2(3 downto 0), Y => HEX5_decoded);

    -- Connect decoded values to the HEX output
    HEX0_sig <= HEX0_decoded;
    HEX1_sig <= HEX1_decoded;
    HEX2_sig <= HEX2_decoded;
    HEX3_sig <= HEX3_decoded;
    HEX4_sig <= HEX4_decoded;
    HEX5_sig <= HEX5_decoded;

end Behavioral;