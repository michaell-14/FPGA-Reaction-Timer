library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PreScale is 
    port(
        Inclock  : in std_logic;
        SW : in std_logic_vector(2 downto 0); -- Speed selection
        Outclock : out std_logic
    );
end entity PreScale;

architecture PreScaling of PreScale is 
    signal counter : unsigned(24 downto 0) := (others => '0');
    signal N : unsigned(24 downto 0); -- prescale factor
begin 
    process(SW)
    begin
        if SW(0) = '1' then
            N <= to_unsigned(50_000_000 - 1, 25);  -- 1 Hz (50M cycles)
        elsif SW(1) = '1' then
            N <= to_unsigned(25_000_000 - 1, 25);  -- 2 Hz (25M cycles)
        elsif SW(2) = '1' then
            N <= to_unsigned(12_500_000 - 1, 25);  -- 4 Hz (12.5M cycles)
        else
            N <= to_unsigned(50_000_000 - 1, 25); -- Default to 1 Hz
        end if;
    end process;

    process(Inclock)
    begin
        if rising_edge(Inclock) then
            if counter = N then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    Outclock <= counter(24);
end PreScaling;
