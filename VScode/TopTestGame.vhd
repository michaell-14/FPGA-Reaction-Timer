library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopTestGame is
    port(
        CLOCK_50 : in std_logic;
        reset     : in std_logic;
        SW        : in std_logic_vector(9 downto 0);
        HEX0      : out std_logic_vector(6 downto 0);
        HEX1      : out std_logic_vector(6 downto 0);
        HEX2      : out std_logic_vector(6 downto 0);
        HEX3      : out std_logic_vector(6 downto 0);
        HEX4      : out std_logic_vector(6 downto 0);
        HEX5      : out std_logic_vector(6 downto 0);
        KEY       : in std_logic_vector(3 downto 0);
        LEDR      : out std_logic_vector(3 downto 0)
    );
end entity TopTestGame;

architecture Behavioral of TopTestGame is
    signal clk_prescale           : std_logic;
    signal rand_num               : std_logic_vector(3 downto 0);
    signal prescaled_clk_A        : std_logic_vector(3 downto 0);
    signal prescaled_clk_B        : std_logic_vector(3 downto 0);
    signal clk_run_A, clk_run1_A      : std_logic;
    signal latched_clk_A_p1       : std_logic_vector(3 downto 0);
    signal latched_clk_B_p1       : std_logic_vector(3 downto 0);
    signal latched_clk_A_p2       : std_logic_vector(3 downto 0);
    signal latched_clk_B_p2       : std_logic_vector(3 downto 0);
    signal reset_turn             : std_logic;
    signal reset_game             : std_logic;
    signal win                    : std_logic_vector(1 downto 0);
    signal HEX0_sig1, HEX1_sig1, HEX2_sig1, HEX3_sig1, HEX4_sig1, HEX5_sig1 : std_logic_vector(6 downto 0);
    signal HEX0_decoded1, HEX1_decoded1, HEX2_decoded1, HEX3_decoded1, HEX4_decoded1, HEX5_decoded1 : std_logic_vector(6 downto 0);
    signal D0, D1, D2, D3 : std_logic_vector(3 downto 0);

    signal reaction_time          : unsigned(23 downto 0) := (others => '0');
    signal start_time             : unsigned(23 downto 0) := (others => '0');
    signal end_time               : unsigned(23 downto 0) := (others => '0');

    type state_type is (Setup, P1Game, DisplayP1, P2Game, Compare, Winner);
    signal current_state, next_state : state_type;

    -- Component declarations
    component PreScale
        port(
            Inclock  : in std_logic;
            SW       : in std_logic_vector(2 downto 0); -- Speed selection
            Outclock_A : out std_logic_vector(3 downto 0);
            Outclock_B : out std_logic_vector(3 downto 0)
        );
    end component;

    component RandGen
        port(
            clk1      : in std_logic;
            reset_gen : in std_logic;
            init_seed : in std_logic_vector(3 downto 0);
            rand      : out std_logic_vector(3 downto 0)
        );
    end component;

    component SegDecoder
        port(
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(6 downto 0)
        );
    end component;

    component FSM_GameLogic
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
            FF_clk : in std_logic;
            random_num : in std_logic_vector(3 downto 0);
            win             : inout std_logic_vector(1 downto 0);
            HEX0_sig        : out std_logic_vector(6 downto 0);
            HEX1_sig        : out std_logic_vector(6 downto 0);
            HEX2_sig        : out std_logic_vector(6 downto 0);
            HEX3_sig        : out std_logic_vector(6 downto 0);
            HEX4_sig        : out std_logic_vector(6 downto 0);
            HEX5_sig        : out std_logic_vector(6 downto 0)
        );
    end component;

begin

	 clk_run_A <= not KEY(0);
    clk_run1_A <= not KEY(1);
    reset_game <= not KEY(3);
    reset_turn <= not KEY(2);

    -- Instantiate PreScale
    prescaler: PreScale
        port map(
            Inclock => CLOCK_50,
            SW => SW(2 downto 0),
            Outclock_A => prescaled_clk_A,
            Outclock_B => prescaled_clk_B
        );

    -- Instantiate RandGen
    random_gen: RandGen
        port map(
            clk1 => CLOCK_50,
            reset_gen => reset,
            init_seed => SW(3 downto 0),
            rand => rand_num
        );

    -- Instantiate FSM_GameLogic
    fsm_inst : FSM_GameLogic
        port map(
            fsm_clk_A => prescaled_clk_A,           -- Connect prescaled clock A
            fsm_clk_B => prescaled_clk_B,
            clk_run           => clk_run_A,                   -- Connect clk_run
            clk_run1          => clk_run1_A,                  -- Connect clk_run1 if needed
            reset_game        => reset_game,                -- Connect reset signal
            latched_clk_A_p1  => latched_clk_A_p1,          -- Connect latched clk A for player 1
            latched_clk_B_p1  => latched_clk_B_p1,          -- Connect latched clk B for player 1
            latched_clk_A_p2  => latched_clk_A_p2,          -- Connect latched clk A for player 2
            latched_clk_B_p2  => latched_clk_B_p2,          -- Connect latched clk B for player 2
            FF_clk => CLOCK_50,
            random_num => rand_num,
            win               => win,                       -- Connect win signal
            HEX0_sig          => HEX0_sig1,                  -- Connect HEX0 for display
            HEX1_sig          => HEX1_sig1,                  -- Connect HEX1 for display
            HEX2_sig          => HEX2_sig1,                  -- Connect HEX2 for display
            HEX3_sig          => HEX3_sig1,                  -- Connect HEX3 for display
            HEX4_sig          => HEX4_sig1,                  -- Connect HEX4 for display
            HEX5_sig          => HEX5_sig1                   -- Connect HEX5 for display
        );

    -- Assign intermediate signals to output ports
    HEX0 <= HEX0_sig1;
    HEX1 <= HEX1_sig1;
    HEX2 <= HEX2_sig1;
    HEX3 <= HEX3_sig1;
    HEX4 <= HEX4_sig1;
    HEX5 <= HEX5_sig1;

end Behavioral;
