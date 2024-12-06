library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GameFSM is
    port(
        clk_in : in std_logic;
        reset_game : inout std_logic;
        KEY : in std_logic_vector(1 downto 0);
        SW : in std_logic_VECTOR(3 downto 0);
        rand_num : in std_logic_vector(3 downto 0);
        SW_1 : in std_logic_vector(9 downto 6);
        hex_disp : out std_logic_vector(3 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0);
        winner_led : inout std_logic_vector(1 downto 0)
    );
end GameFSM;

architecture FSM of GameFSM is
    type state_type is (Setup, P1Game, DisplayP1, WaitP2, P2Game, Compare, Winner);
    signal current_state, next_state : state_type;

    signal clk_prescale : std_logic;
    signal time_p1, time_p2 : unsigned(23 downto 0) := (others => '0');
    signal rand_num_reg : std_logic_vector(3 downto 0);

    signal button_p1 : std_logic;
    signal button_p2 : std_logic;
    signal reset_over : std_logic;

    component PreScale
        port(
            Inclock  : in std_logic;
            SW       : in std_logic_vector(2 downto 0);
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
            clk1      : in STD_LOGIC;
            reset_gen : in STD_LOGIC;
            init_seed : in std_logic_vector(3 downto 0);
            rand      : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    button_p1 <= KEY(0);
    button_p2 <= KEY(1);
    reset_over <= SW(3);

    prescaler: PreScale
        port map(
            Inclock => clk_in,
            SW => SW(2 downto 0),
            Outclock => clk_prescale
        );

    RandomGen : RandGen
        port map(
            clk1 => clk_prescale,
            reset_gen => reset_game,
            init_seed => SW_1(9 downto 6),
            rand => rand_num_reg
        );

    process(clk_in, reset_game)
    begin
        if reset_game = '1' then
            current_state <= Setup;
        elsif rising_edge(clk_in) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, button_p1, button_p2, rand_num_reg, clk_prescale)
    begin
        case current_state is
            when Setup =>
                hex_disp <= rand_num_reg; 
                if button_p1 = '0' then
                    next_state <= P1Game;
                else
                    next_state <= Setup;
                end if;

            when P1Game =>
                if clk_prescale = '1' then
                    hex_disp <= rand_num_reg;
                end if;
                if button_p1 = '1' then
                    time_p1 <= unsigned(rand_num_reg) * to_unsigned(10, 20);
                    next_state <= DisplayP1;
                end if;

            when DisplayP1 =>
                hex_disp <= std_logic_vector(time_p1(3 downto 0));
                if button_p2 = '1' then
                    next_state <= WaitP2;
                end if;

            when WaitP2 =>
                if button_p2 = '0' then
                    next_state <= P2Game;
                end if;

            when P2Game =>
                if clk_prescale = '1' then
                    hex_disp <= rand_num_reg;
                end if;
                if button_p2 = '1' then
                    time_p2 <= unsigned(rand_num_reg) * to_unsigned(10, 20);
                    next_state <= Compare;
                end if;

            when Compare =>
                if time_p1 < time_p2 then
                    winner_led <= "00"; -- Player 1 wins
                else
                    winner_led <= "01"; -- Player 2 wins
                end if;
                next_state <= Winner;

            when Winner =>
                -- Show winner
                hex_disp <= "0001";
                next_state <= Setup;

            when others =>
                next_state <= Setup;
        end case;
    end process;

 -- 7-segment display decoder instantiation
p0 : SegDecoder
    port map (
        D => std_logic_vector(time_p1(3 downto 0)),  -- Convert unsigned to std_logic_vector
        Y => HEX0
    );

p1 : SegDecoder
    port map (
        D => std_logic_vector(time_p1(7 downto 4)),  -- Convert unsigned to std_logic_vector
        Y => HEX1
    );

p2 : SegDecoder
    port map (
        D => std_logic_vector(time_p2(3 downto 0)),  -- Convert unsigned to std_logic_vector
        Y => HEX2
    );

p3 : SegDecoder
    port map (
        D => std_logic_vector(time_p2(7 downto 4)),  -- Convert unsigned to std_logic_vector
        Y => HEX3
    );

p4 : SegDecoder
    port map (
        D => "00" & winner_led,  -- Concatenate zeros to make it 4 bits for winner_led
        Y => HEX4
    );

p5 : SegDecoder
    port map (
        D => "00" & winner_led,  -- Concatenate zeros to make it 4 bits for winner_led
        Y => HEX5
    );
end FSM;
