library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GameFSM is
    port(
        clk_in : in std_logic;
        reset_game : in std_logic;
        KEY : in std_logic_vector(1 downto 0); -- Player buttons
        SW : in std_logic_VECTOR(3 downto 0); -- Clock speed control
        rand_num : in std_logic_vector(3 downto 0); -- Random number input (from RandGen)
        hex_disp : out std_logic_vector(3 downto 0); -- Display random number
        HEX0 : out std_logic_vector(6 downto 0); -- Player 1 reaction time display
        HEX1 : out std_logic_vector(6 downto 0); -- Random number display
        HEX2 : out std_logic_vector(6 downto 0); -- Player 2 reaction time display
        HEX3 : out std_logic_vector(6 downto 0); -- Winner display
        HEX4 : out std_logic_vector(6 downto 0); -- Timer for Player 2
        HEX5 : out std_logic_vector(6 downto 0); -- Timer for Player 1
        winner_led : out std_logic_vector(1 downto 0) -- 00: None, 01: P1, 10: P2, 11: Tie
    );
end GameFSM;

architecture FSM of GameFSM is
    type state_type is (Setup, WaitP1, P1Game, DisplayP1, WaitP2, P2Game, Compare, Winner);
    signal current_state, next_state : state_type;
    signal clk_prescale : std_logic; -- Slowed clock
    signal time_p1, time_p2 : unsigned(23 downto 0) := (others => '0');
    signal rand_num_reg : std_logic_vector(3 downto 0);
    signal button_p1 : std_logic;
    signal button_p2 : std_logic;
    signal reset_over : std_logic; 
    signal counter_p1, counter_p2 : unsigned(23 downto 0) := (others => '0');
    signal counting_p1, counting_p2 : std_logic := '0'; -- Flags to check if counting should be done

    -- Components
    component PreScale
        port(
            Inclock  : in std_logic;
            SW       : in std_logic_vector(2 downto 0); -- Speed selection
            Outclock : out std_logic
        );
    end component;

    component SegDecoder
        port(
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(6 downto 0)
        );
    end component;

    component RandGen
        port(
            clk1    : in STD_LOGIC;
            reset_gen  : in STD_LOGIC;
            rand   : out STD_LOGIC_VECTOR(3 downto 0) -- Random number (0 to 9)
        );
    end component;

begin
    -- Map buttons to KEY inputs
    button_p1 <= KEY(0);
    button_p2 <= KEY(1);
    reset_over <= SW(3);

    -- Instantiate Prescaler
    prescaler: PreScale
        port map(
            Inclock => clk_in, 
            SW => SW(2 downto 0), 
            Outclock => clk_prescale
        );

    -- Instantiate Random Generator
    RandomGen : RandGen
        port map(
            clk1 => clk_prescale,
            reset_gen => reset_game,
            rand => rand_num_reg
        );

    -- State Transition
    process(clk_prescale, reset_game)
    begin
        if reset_game = '1' then
            current_state <= Setup;
        elsif rising_edge(clk_prescale) then
            current_state <= next_state;
        end if;
    end process;

    -- State Logic
    process(current_state, button_p1, button_p2, rand_num_reg, time_p1, time_p2, counter_p1, counter_p2)
    begin
        case current_state is
            when Setup =>
                hex_disp <= rand_num_reg; -- Display random number
                time_p1 <= (others => '0');
                time_p2 <= (others => '0');
                if reset_game = '1' then
                    next_state <= Setup;
                elsif button_p1 = '1' then
                    next_state <= WaitP1;
                else
                    next_state <= Setup;
                end if;

            when WaitP1 =>
                if button_p1 = '0' then
                    next_state <= P1Game;
                else
                    next_state <= WaitP1;
                end if;

            when P1Game =>
                if button_p1 = '0' then -- Falling edge detected
                    counting_p1 <= '1'; -- Start counter for Player 1
                    next_state <= DisplayP1;
                end if;

            when DisplayP1 =>
                hex_disp <= std_logic_vector(time_p1(3 downto 0)); -- Display Player 1 time
                if button_p1 = '1' then
                    counting_p1 <= '0'; -- Stop counter
                    next_state <= WaitP2;
                else
                    next_state <= DisplayP1;
                end if;

            when WaitP2 =>
                if button_p2 = '0' then
                    next_state <= P2Game;
                else
                    next_state <= WaitP2;
                end if;

            when P2Game =>
                if button_p2 = '0' then -- Falling edge detected
                    counting_p2 <= '1'; -- Start counter for Player 2
                    next_state <= Compare;
                end if;

            when Compare =>
                if time_p1 < time_p2 then
                    winner_led <= "01"; -- Player 1 wins
                elsif time_p1 > time_p2 then
                    winner_led <= "10"; -- Player 2 wins
                else
                    winner_led <= "11"; -- Tie
                end if;
                next_state <= Winner;

            when Winner =>
                if reset_game = '1' then
                    next_state <= Setup;
                else
                    next_state <= Winner;
                end if;

            when others =>
                next_state <= Setup;
        end case;
    end process;

    -- 7-Segment Display Decoders for all displays
    seg_decoder0: SegDecoder
        port map(D => rand_num_reg, Y => HEX0);
    seg_decoder1: SegDecoder
        port map(D => rand_num_reg, Y => HEX1);
    seg_decoder2: SegDecoder
        port map(D => std_logic_vector(time_p1(3 downto 0)), Y => HEX2);
    seg_decoder3: SegDecoder
        port map(D => std_logic_vector(time_p2(3 downto 0)), Y => HEX3);
    seg_decoder4: SegDecoder
        port map(D => std_logic_vector(counter_p1(3 downto 0)), Y => HEX4);
    seg_decoder5: SegDecoder
        port map(D => std_logic_vector(counter_p2(3 downto 0)), Y => HEX5);
    
end FSM;
