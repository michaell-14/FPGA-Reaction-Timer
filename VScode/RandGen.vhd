library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RandGen is
    port(
        clk1    : in std_logic;
        reset_gen : in std_logic;
        rand   : out std_logic_vector(3 downto 0) -- Random number (0 to 9)
    );
end entity RandGen;

architecture Behavioral of RandGen is
    signal lfsr : std_logic_vector(3 downto 0) := "1101"; -- Seed value
begin
    process(clk1, reset_gen)
    begin
        if reset_gen = '1' then
            lfsr <= "1101"; -- Reset LFSR to seed
        elsif rising_edge(clk1) then
            lfsr <= lfsr(2 downto 0) & (lfsr(3) xor lfsr(2)); -- XOR feedback
        end if;
    end process;

    rand <= lfsr;
end Behavioral;
