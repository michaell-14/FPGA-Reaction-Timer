library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PreScale is
    port(
        Inclock  : in std_logic;
        SW       : in std_logic_vector(2 downto 0); -- Speed selection
        Outclock_A : out std_logic_vector(3 downto 0);
        Outclock_B : out std_logic_vector(3 downto 0)
    );
end entity PreScale;

architecture PreScaling of PreScale is
    signal counter : unsigned(24 downto 0) := (others => '0');
    signal N : unsigned(24 downto 0) := to_unsigned(50_000_000 - 1, 25); -- Default to 1 Hz
    signal toggle : std_logic := '0';
    signal SW_reg : std_logic_vector(2 downto 0) := (others => '0'); -- Registered SW
begin

    -- Main clock process
    process(Inclock)
    begin
        if rising_edge(Inclock) then
            -- Detect changes in SW and update N
            if SW /= SW_reg then
                SW_reg <= SW; -- Update registered SW
                case SW is
                    when "001" => N <= to_unsigned(50_000_000 - 1, 25); -- 1 Hz
                    when "010" => N <= to_unsigned(25_000_000 - 1, 25); -- 2 Hz
                    when "100" => N <= to_unsigned(12_500_000 - 1, 25); -- 4 Hz
                    when others => N <= to_unsigned(50_000_000 - 1, 25); -- Default 1 Hz
                end case;
                counter <= (others => '0'); -- Reset counter on SW change
            end if;

            -- Counter logic
            if counter = N then
                counter <= (others => '0');
                toggle <= not toggle;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    Outclock_A <= (others => toggle);
    Outclock_B <= (others => toggle);
end PreScaling;
