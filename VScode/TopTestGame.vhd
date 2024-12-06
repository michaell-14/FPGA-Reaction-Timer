library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopTestGame is
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
        KEY       : in std_logic_vector(2 downto 0);  -- Button inputs (KEY0 to control clock)
        LEDR      : out std_logic_vector(3 downto 0)  -- Connect to LEDs
    );
end entity TopTestGame;

architecture Behavioral of TopTestGame is
    signal clk_prescale   : std_logic_vector(3 downto 0);
    signal rand_num       : std_logic_vector(3 downto 0);
    signal prescaled_clk_A  : std_logic_vector(3 downto 0);
    signal prescaled_clk_B  : std_logic_vector(3 downto 0);
    signal clk_run        : std_logic_vector(3 downto 0);  -- Signal to control clock
    signal debug_clk_run  : std_logic_vector(3 downto 0);  -- Debugging signal for clk_run
    signal debug_prescaled_clk_A : std_logic_vector(3 downto 0); -- Debugging signal for prescaled_clk
    signal debug_prescaled_clk_B : std_logic_vector(3 downto 0);

    -- Instantiate PreScale component
    component PreScale
        port(
            Inclock  : in std_logic;
            SW       : in std_logic_vector(2 downto 0); -- Speed selection
            Outclock_A : out std_logic_vector(3 downto 0);
            Outclock_B : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    -- Instantiate PreScale
    prescaler: PreScale
        port map(
            Inclock => clk,
            SW => SW(2 downto 0),
            Outclock_A => prescaled_clk_A,
            Outclock_B => prescaled_clk_B
        );

    -- Example usage of prescaled clocks
    clk_prescale <= prescaled_clk_A;

    -- Debugging signals
    debug_clk_run <= clk_run;
    debug_prescaled_clk_A <= prescaled_clk_A;
    debug_prescaled_clk_B <= prescaled_clk_B;


    -- Instantiate RandGen
    RandomGen: RandGen
        port map(
            clk1 => prescaled_clk_A,
            reset_gen => reset,
            init_seed => SW(6 downto 3), -- Use 4 bits of switches as dynamic seed
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

    -- Instantiate SegDecoder for displaying switch state (for debugging)
    seg_decoder3: SegDecoder
        port map(D => std_logic_vector(unsigned(rand_num) * 10)(3 downto 0), Y => HEX1);

    -- Debugging: Assign clk_run and prescaled_clk to LEDs
    LEDR(0) <= debug_clk_run;
    LEDR(1) <= debug_prescaled_clk_A;
	 LEDR(2) <= debug_prescaled_clk_B;

    -- Other HEX displays can be left blank or used for additional information
    HEX2 <= "1111111"; -- Display nothing
    HEX3 <= "1111111"; -- Display nothing

end Behavioral;
