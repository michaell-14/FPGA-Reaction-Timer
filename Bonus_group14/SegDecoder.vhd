--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use ieee.std_logic_1164.all;

entity SegDecoder is 
	port(
		D : in std_logic_vector(3 downto 0);
		Y : out std_logic_vector(6 downto 0)
	);
	end SegDecoder;
architecture behavorial of SegDecoder is 
	begin --y6,y5,y4,y3,y2,y1,y0
		with D select -- complement then invert to get correct output on 7 bit disp
			Y <=  "1000000" when "0000",  
					"1111001" when "0001", --original: 0110000, complemented: disp 1001111 
					"0100100" when "0010", --complemented: 0010010, orignial: 1101101
					"0110000" when "0011",
					"0011001" when "0100",
					"0010010" when "0101",
					"0000010" when "0110",
					"1111000" when "0111",
					"0000000" when "1000",
					"0011000" when "1001",
					"0001000" when "1010",
					"0000011" when "1011",
					"0100111" when "1100",
					"0100001" when "1101",
					"0000110" when "1110",
					"0001110" when "1111",
					"1111111" when others; --Default setting
	end behavorial;