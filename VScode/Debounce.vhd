library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debounce is
    Port ( clk_DB : in std_logic;
           reset_DB : in std_logic;
           noisy : in std_logic;
           clean : out std_logic);
end Debounce;

architecture Behavioral of Debounce is
    signal debounce_counter : integer range 0 to 1_000_000 := 0;
    signal debounced_signal : std_logic := '0';
    constant DEBOUNCE_TIME : integer := 1_000_000; -- Adjustable debounce time
begin
    process (clk_DB, reset_DB)
    begin
        if reset_DB = '1' then
            debounce_counter <= 0;
            debounced_signal <= '0';
        elsif rising_edge(clk_DB) then
            if noisy /= debounced_signal then
                debounce_counter <= debounce_counter + 1;
                if debounce_counter = DEBOUNCE_TIME then
                    debounced_signal <= noisy;
                    debounce_counter <= 0;
                end if;
            else
                debounce_counter <= 0;
            end if;
        end if;
    end process;
    clean <= debounced_signal;
end Behavioral;
