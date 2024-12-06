library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopTest is
    port(
        clk       : in std_logic;            -- Connect to a clock pin on your FPGA
        reset     : in std_logic;            -- Connect to a reset button on your FPGA
        SW        : in std_logic_vector(9 downto 0);  -- Connect to DIP switches or input pins
        HEX0      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX1      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX2      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX3      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX4      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX5      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        KEY       : in std_logic_vector(1 downto 0);  -- Button inputs (KEY0 to control clock)
        LEDR      : out std_logic_vector(3 downto 0)  -- Connect to LEDs
    );
end entity TopTest;

architecture Behavioral of TopTest is
    signal clk_prescale   : std_logic;
    signal rand_num       : std_logic_vector(3 downto 0);
    signal prescaled_clk  : std_logic;
    signal clk_run        : std_logic;  -- Signal to control clock
    signal debug_clk_run  : std_logic;  -- Debugging signal for clk_run
    signal debug_prescaled_clk : std_logic; -- Debugging signal for prescaled_clk

    -- Instantiate PreScale component
    component PreScale
        port(
            Inclock  : in std_logic;
            SW       : in std_logic_vector(2 downto 0); -- Speed selection
            Outclock : out std_logic
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
    clk_run <= '0' when KEY(0) = '1' else '1'; -- active-low logic for KEY0

    -- Debugging signal for clk_run
    debug_clk_run <= clk_run;

    -- Instantiate PreScale
    prescaler: PreScale
        port map(
            Inclock => clk,
            SW => SW(2 downto 0),
            Outclock => prescaled_clk
        );

   -- Debugging signal for prescaled_clk
	debug_prescaled_clk <= prescaled_clk when KEY(1) = '1' else KEY(1);

    -- Instantiate RandGen
    RandomGen: RandGen
        port map(
            clk1 => prescaled_clk,
            reset_gen => reset,
            init_seed => SW(6 downto 3), -- Use 4 bits of switches as dynamic seed
            rand => rand_num
        );

    -- Connect random number to LEDs
    --LEDR <= rand_num;

    -- Instantiate SegDecoder for displaying random number on HEX5 and HEX4
    seg_decoder5: SegDecoder
        port map(D => rand_num, Y => HEX5);

    -- Instantiate SegDecoder for displaying switch state (for debugging)
    seg_decoder0: SegDecoder
        port map(D => rand_num, Y => HEX0);

    -- Instantiate SegDecoder for displaying switch state (for debugging)
    seg_decoder3: SegDecoder
        port map(D => std_logic_vector(unsigned(rand_num) * 10)(3 downto 0), Y => HEX1);

    -- Debugging: Assign clk_run and prescaled_clk to LEDs
    LEDR(0) <= debug_clk_run;
    LEDR(1) <= debug_prescaled_clk;

    -- Other HEX displays can be left blank or used for additional information
    HEX2 <= "1111111"; -- Display nothing
    HEX3 <= "1111111"; -- Display nothing

end Behavioral;
