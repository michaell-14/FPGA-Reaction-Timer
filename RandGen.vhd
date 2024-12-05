library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RandGen is
    port(
        clk1    : in STD_LOGIC;
        reset_gen  : in STD_LOGIC;
        rand   : out STD_LOGIC_VECTOR(3 downto 0) -- Random number (0 to 9)
    );
end entity RandGen;

architecture Behavioral of RandGen is
    signal lfsr : STD_LOGIC_VECTOR(3 downto 0) := "1101"; -- Seed
begin
    process(clk1, reset_gen)
    begin
        if reset_gen = '1' then
            lfsr <= "1101"; -- Reset to seed
        elsif rising_edge(clk1) then
            lfsr <= lfsr(2 downto 0) & (lfsr(3) xor lfsr(2)); -- LFSR logic
        end if;
    end process;

    rand <= lfsr;
end Behavioral;
