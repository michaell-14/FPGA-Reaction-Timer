library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopTestGame is
    port(
        CLOCK_50 : in std_logic;            -- Connect to a clock pin on your FPGA
        reset     : in std_logic;            -- Connect to a reset button on your FPGA
        SW        : in std_logic_vector(9 downto 0);  -- Connect to DIP switches or input pins
        HEX0      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX1      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX2      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX3      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX4      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        HEX5      : out std_logic_vector(6 downto 0);  -- Connect to 7-segment display
        KEY       : in std_logic_vector(3 downto 0);  -- Button inputs (KEY0 to control clock)
        LEDR      : out std_logic_vector(3 downto 0)  -- Connect to LEDs
    );
end entity TopTestGame;

architecture Behavioral of TopTestGame is
    signal clk_prescale   : std_logic;
    signal rand_num       : std_logic_vector(3 downto 0);
    signal prescaled_clk_A  : std_logic_vector(3 downto 0);
	 signal prescaled_clk_B  : std_logic_vector(3 downto 0);
    
	 signal clk_run        : std_logic;  -- Signal to control clock P1
    signal latched_clk_A_p1  : std_logic_vector(3 downto 0); -- Latched clock A value
    signal latched_clk_B_p1  : std_logic_vector(3 downto 0); -- Latched clock B value
	 
	 signal clk_run1        : std_logic;  -- Signal to control clock for P2
	 signal latched_clk_A_p2  : std_logic_vector(3 downto 0); -- Latched clock A value
    signal latched_clk_B_p2  : std_logic_vector(3 downto 0); -- Latched clock A value
	 
	 signal reset_turn : std_logic; --key2
	 signal reset_game : std_logic; --key3
	 
	 signal win : std_logic_vector(1 downto 0); --00 for P1 win, 01 for P2 win
	 
	 type state_type is (Setup, P1Game, DisplayP1, P2Game, Compare, Winner);
	 signal current_state, next_state : state_type;
    -- Instantiate PreScale component
    component PreScale
        port(
             Inclock  : in std_logic;
				 SW       : in std_logic_vector(2 downto 0); -- Speed selection
				 Outclock_A : out std_logic_vector(3 downto 0);
				 Outclock_B : out std_logic_vector(3 downto 0)
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

    -- Debugging signal for clk_run
    clk_run <= not KEY(0);
	 clk_run1 <= not KEY(1);

    -- Instantiate PreScale
    prescaler: PreScale
        port map(
            Inclock => CLOCK_50,
            SW => SW(2 downto 0),
            Outclock_A => prescaled_clk_A,
				Outclock_B => prescaled_clk_B
        );
		  
--		   -- Latch clock values when KEY(0) is released
--    process(CLOCK_50)
--    begin
--        if rising_edge(CLOCK_50) then
--            if clk_run = '1' then
--                latched_clk_A_p1 <= prescaled_clk_A;
--                latched_clk_B_p1 <= prescaled_clk_B;
--            end if;
--        end if;
--    end process;
--
--    -- Use latched clock values for the display
--    seg_decoder3: SegDecoder
--        port map(D => latched_clk_A, Y => HEX3);
--
--    seg_decoder2: SegDecoder
--        port map(D => latched_clk_B, Y => HEX2);

    -- Instantiate RandGen
    RandomGen: RandGen
        port map(
            clk1 => (SW(2) XOR SW(1) XOR (SW(0))) AND clk_run, -- Clock gated by KEY(0)
            reset_gen => SW(5),
            init_seed => SW(9 downto 6), -- Use upper switches for seed
            rand => rand_num
        );

--    -- Connect random number to LEDs
--    --LEDR <= rand_num;
--
--    -- Instantiate SegDecoder for displaying random number on HEX5 and HEX4
--    seg_decoder5: SegDecoder
--        port map(D => prescaled_clk_A, Y => HEX5);
--	
--	seg_decoder4: SegDecoder
--        port map(D => prescaled_clk_B, Y => HEX4);
--
--    -- Instantiate SegDecoder for displaying switch state (for debugging)
--    seg_decoder0: SegDecoder
--        port map(D => rand_num, Y => HEX0);
--
--    -- Debugging: Assign clk_run and prescaled_clk to LEDs
--    LEDR(0) <= clk_run;
--    LEDR(1) <= prescaled_clk_A(3);
--	 LEDR(2) <= prescaled_clk_B(3);
--
--    -- Other HEX displays can be left blank or used for additional information
--    --HEX2 <= "1111111"; -- Display nothing
--   -- HEX3 <= "1111111"; -- Display nothing
--	 HEX1 <= "1111111";
	 
	 reset_game <= KEY(3);
	 reset_turn <= KEY(2);
	 
	 
	 ----------STATE MACHINE----------------------
	
	-- FSM Process to state change
    process(prescaled_clk_A(3), reset_game) --had CLOCK_50 before
    begin
        if reset_game = '1' then
            current_state <= Setup; -- Reset to Setup state
        elsif rising_edge(prescaled_clk_A(3)) then
            current_state <= next_state; -- Update state on clock cycle
        end if;	
    end process;
	 
	 process(current_state, SW, rand_num, clk_run, reset_turn) --still need to add the reset_turn here
	 begin
		case current_state is
			when Setup => 
							if clk_run = '0' then
								next_state <= Setup;
							elsif clk_run = '1' then
								next_state <= P1Game;
							end if;
			
			when P1Game =>
							if clk_run = '0' then
								next_state <= Setup;
							elsif clk_run = '1' then
									if rising_edge(prescaled_clk_A(3)) then
										if clk_run = '1' then
											latched_clk_A_p1 <= prescaled_clk_A;
											latched_clk_B_p1 <= prescaled_clk_B;
										end if;
									end if;
								next_state <= DisplayP1;
							end if;
							
			-- For the DisplayP1 state
		when DisplayP1 =>
							if clk_run1 = '0' then
								next_state <= DisplayP1;
							elsif clk_run1 = '1' then
								next_state <= P2Game;
							end if;

		when P2Game =>
						if clk_run1 = '0' then
							next_state <= DisplayP1;
						elsif clk_run1 = '1' then
							if rising_edge(prescaled_clk_A(3)) then
								if clk_run1 = '1' then
									latched_clk_A_p2 <= prescaled_clk_A;
									latched_clk_B_p2 <= prescaled_clk_B;
								end if;
							end if;
							next_state <= Compare;
						end if;

		when Compare =>
						if (latched_clk_A_p2 + latched_clk_B_p2) > (latched_clk_A_p1 + latched_clk_B_p1) then
							win <= "10"; -- P2 Win
							next_state <= Winner;
						elsif (latched_clk_A_p2 + latched_clk_B_p2) < (latched_clk_A_p1 + latched_clk_B_p1) then
							win <= "01"; -- P1 Win
							next_state <= Winner;
						else
							win <= "11"; -- Tie
							next_state <= Winner;
						end if;

		when Winner => --this is mostly going to be in the output FSM
						if reset_game = '1' then
							next_state <= Setup;
						else
							next_state <= Winner;
						end if;
		
		when others => 
						next_state <= Setup;
		end case;
	end process;
	
	--outputs to hex
	process(current_state)
	begin
		case current_state is
			when Setup => 
							--HEX0
							seg_decoder0 : SegDecoder
								port map(D => rand_num, Y => HEX0);
							
							HEX1 <= "1111111";
							HEX4 <= "1111111";
							HEX5 <= "1111111";
							
							HEX2 <= "1111001"; --1
							HEX3 <= "0001100";--P
			
			when P1Game =>
							seg_decoder5: SegDecoder
								port map(D => prescaled_clk_A, Y => HEX5);
	
							seg_decoder4: SegDecoder
								port map(D => prescaled_clk_B, Y => HEX4);
							
							seg_decoder3: SegDecoder
								port map(D => latched_clk_A, Y => HEX3);

							seg_decoder2: SegDecoder
								port map(D => latched_clk_B, Y => HEX2);
							
							HEX0 <= "1111001"; --1
							HEX1 <= "0001100";--P
							
			when DisplayP1 => 
								HEX4 <= "1111001"; --1
								HEX5 <= "0001100"; --p
								
								seg_decoder_a: SegDecoder
									port map(D => latched_clk_A, Y => HEX1);

								seg_decoder_b: SegDecoder
									port map(D => latched_clk_B, Y => HEX0);
								
			when P2Game =>
							seg_decoder5: SegDecoder
								port map(D => prescaled_clk_A, Y => HEX5);
		
							seg_decoder4: SegDecoder
								port map(D => prescaled_clk_B, Y => HEX4);
							
							seg_decoder3: SegDecoder
								port map(D => latched_clk_A, Y => HEX3);

							seg_decoder2: SegDecoder
								port map(D => latched_clk_B, Y => HEX2);
							
							HEX0 <= "0100100"; --2
							HEX1 <= "0001100";--P
							
			when Compare =>
							HEX0 <= "000100";
							HEX1 <= "000100";
							HEX2 <= "000100";
							HEX3 <= "000100";
							HEX4 <= "000100";
							HEX5 <= "000100";
			
			when Winner =>
							if win = "01" then
								HEX0 <="111111";
								HEX1 <="111111";
								HEX4 <="111111";
								HEX5 <="111111";
								
								HEX2 <= "1111001"; --1
								HEX3 <= "0001100"; --p
								
							elsif win = "10" then
								HEX0 <="111111";
								HEX1 <="111111";
								HEX4 <="111111";
								HEX5 <="111111";
								
								HEX2 <= "0100100"; --2
								HEX3 <= "0001100"; --p
								
							elsif win = "11" then
								HEX2 <="0000110";
								HEX3 <="0000110"; --EE equal
								HEX1 <="0001100";
								HEX5 <="0001100"; --p
								HEX0 <= "0100100";
								HEX1 <= "1111001";
							else
								HEX0 <="111111";
								HEX1 <="111111";
								HEX2 <="111111";
								HEX3 <="111111";
								HEX4 <="111111";
								HEX5 <="111111";
							end if;
						
					end case;
				end process;

end Behavioral;
