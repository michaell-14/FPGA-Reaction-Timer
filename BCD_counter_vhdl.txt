--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

--BCDCount2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCDCount2 is 
	port(
			clear : in std_logic;
			en1 : in std_logic;
			clk2 : in std_logic;
			BCD_0 : out unsigned(3 downto 0);
			BCD_1 : out unsigned(3 downto 0)
		);
		
end BCDCount2;

architecture behavorial of BCDCount2 is

	signal bcd0 : unsigned(3 downto 0) := (others => '0');
	signal bcd1 : unsigned(3 downto 0) := (others => '0');
	
	begin
		process(clk2, clear)
		begin
			if clear = '1' then --clear condition, asynchronus 
				bcd0 <= (others => '0');
				bcd1 <= (others => '0');
			elsif rising_edge(clk2) then --adding, but bunch of conditions
				if en1 = '1' then
					if bcd0 = 9 then --bcd0 max
						bcd0 <= (others => '0');
					else
						bcd1 <= bcd1 + 1; --increments the bcd1 up by 1 to represent the tens place
					end if;
				else 
					bcd0 <= bcd0 + 1;
				end if;
			end if;
		end process;
		
		BCD_0 <= bcd0;
		BCD_1 <= bcd1;
		
	end behavorial;		
