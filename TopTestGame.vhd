library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopTestGame is
    port(
        CLOCK_50 : in std_logic;            -- Connect to a clock pin on your FPGA
        reset     : in std_logic;            -- Connect to a reset button on your FPGA
        SW        : in std_logic_vector(9 downto 0);  -- Connect to DIP switches or input pins
        HEX0      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX1      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX2      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX3      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX4      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX5      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        KEY       : in std_logic_vector(2 downto 0);  -- Button inputs (KEY0 to control clock)
        LEDR      : out std_logic_vector(3 downto 0)  -- Connect to LEDs
    );
end entity TopTestGame;

architecture Behavioral of TopTestGame is
    signal clk_prescale   : std_logic;
    signal rand_num       : std_logic_vector(3 downto 0);
    signal prescaled_clk_A  : std_logic_vector(3 downto 0);
	 signal prescaled_clk_B  : std_logic_vector(3 downto 0);
    signal clk_run        : std_logic;  -- Signal to control clock
    signal latched_clk_A  : std_logic_vector(3 downto 0); -- Latched clock A value
    signal latched_clk_B  : std_logic_vector(3 downto 0); -- Latched clock B value
    -- Instantiate PreScale component
    component PreScale
        port(
             Inclock  : in std_logic;
				 SW       : in std_logic_vector(2 downto 0); -- Speed selection
				 Outclock_A : out std_logic_vector(3 downto 0);
				 Outclock_B : out std_logic_vector(3 downto 0)
        );
    end component;
	 
	 

    -- Instantiate RandGen component
    component RandGen
        port(
            clk1      : in std_logic; -- Clock signal
            reset_gen : in std_logic; -- Reset signal
            init_seed : in std_logic_vector(3 downto 0); -- External dynamic seed input
            rand      : out std_logic_vector(3 downto 0) -- Random number output
        );
    end component;

    -- Instantiate SegDecoder component
    component SegDecoder
        port(
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    -- Use KEY0 to control whether the clock is running

    -- Debugging signal for clk_run
    clk_run <= not KEY(0);
    -- Instantiate PreScale
    prescaler: PreScale
        port map(
            Inclock => CLOCK_50,
            SW => SW(2 downto 0),
            Outclock_A => prescaled_clk_A,
				Outclock_B => prescaled_clk_B
        );
		  
		   -- Latch clock values when KEY(0) is released
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if clk_run = '1' then
                latched_clk_A <= prescaled_clk_A;
                latched_clk_B <= prescaled_clk_B;
            end if;
        end if;
    end process;

    -- Use latched clock values for the display
    seg_decoder3: SegDecoder
        port map(D => latched_clk_A, Y => HEX3);

    seg_decoder2: SegDecoder
        port map(D => latched_clk_B, Y => HEX2);

    -- Instantiate RandGen
    RandomGen: RandGen
        port map(
            clk1 => (SW(2) XOR SW(1) XOR (SW(0))) AND clk_run, -- Clock gated by KEY(0)
            reset_gen => not KEY(2),
            init_seed => SW(9 downto 6), -- Use upper switches for seed
            rand => rand_num
        );

    -- Connect random number to LEDs
    --LEDR <= rand_num;

    -- Instantiate SegDecoder for displaying random number on HEX5 and HEX4
    seg_decoder5: SegDecoder
        port map(D => prescaled_clk_A, Y => HEX5);
	
	seg_decoder4: SegDecoder
        port map(D => prescaled_clk_B, Y => HEX4);

    -- Instantiate SegDecoder for displaying switch state (for debugging)
    seg_decoder0: SegDecoder
        port map(D => rand_num, Y => HEX0);

    -- Debugging: Assign clk_run and prescaled_clk to LEDs
    LEDR(0) <= clk_run;
    LEDR(1) <= prescaled_clk_A(3);
	 LEDR(2) <= prescaled_clk_B(3);

    -- Other HEX displays can be left blank or used for additional information
    --HEX2 <= "1111111"; -- Display nothing
   -- HEX3 <= "1111111"; -- Display nothing
	 HEX1 <= "1111111";

end Behavioral;
