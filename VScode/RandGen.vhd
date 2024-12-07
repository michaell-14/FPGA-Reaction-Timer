library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RandGen is
    port(
        clk1      : in std_logic; -- Clock signal
        reset_gen : in std_logic; -- Reset signal
        init_seed : in std_logic_vector(3 downto 0); -- External dynamic seed input
        rand      : out std_logic_vector(3 downto 0) -- Random number output
    );
end entity RandGen;

architecture Behavioral of RandGen is
    signal lfsr : std_logic_vector(3 downto 0) := "1001"; -- LFSR register
begin
    process(clk1, reset_gen)
    begin
        if reset_gen = '1' then
            -- Set LFSR to external dynamic seed
            lfsr <= init_seed; 
        elsif rising_edge(clk1) then
            -- LFSR logic with feedback
            lfsr <= lfsr(2 downto 0) & (lfsr(3) xor lfsr(1));
        end if;
    end process;

    rand <= lfsr; -- Assign LFSR value to output
end Behavioral;
