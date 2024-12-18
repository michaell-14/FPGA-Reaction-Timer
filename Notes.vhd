--architecture Behavioral of TopTestGame is
--    signal clk_prescale           : std_logic;
--    signal rand_num               : std_logic_vector(3 downto 0);
--    signal counter                : integer := 0;
--    signal enable_clk_run         : std_logic := '0';
--    signal prescaled_clk_A        : std_logic_vector(3 downto 0);
--    signal prescaled_clk_B        : std_logic_vector(3 downto 0);
--    signal clk_run                : std_logic;
--    signal latched_clk_A          : std_logic_vector(3 downto 0) := (others => '0');
--    signal latched_clk_B          : std_logic_vector(3 downto 0) := (others => '0');
--    signal key_prev_state         : std_logic := '1';
--
--    type state_type is (Setup, WaitForStart, LatchValue, DisplayValues);
--    signal current_state, next_state : state_type;
--
--    -- Component declarations remain unchanged
--
--begin
--    -- Map the `clk_run` enable
--    clk_run <= enable_clk_run AND not KEY(0);
--
--    -- Random number generation instance
--    RandomGen: RandGen
--        port map(
--            clk1 => CLOCK_50,
--            reset_gen => reset_game,
--            init_seed => SW(9 downto 6),
--            rand => rand_num
--        );
--
--    -- State Machine
--    process(CLOCK_50, reset_game)
--    begin
--        if reset_game = '1' then
--            current_state <= Setup;
--            enable_clk_run <= '0';
--            counter <= 0;
--            latched_clk_A <= (others => '0');
--            latched_clk_B <= (others => '0');
--        elsif rising_edge(CLOCK_50) then
--            current_state <= next_state;
--
--            case current_state is
--                when Setup =>
--                    enable_clk_run <= '0';
--                    counter <= 0;
--                    next_state <= WaitForStart;
--
--                when WaitForStart =>
--                    if counter < to_integer(unsigned(rand_num)) then
--                        counter <= counter + 1;
--                    else
--                        enable_clk_run <= '1'; -- Enable the clock
--                        next_state <= LatchValue;
--                    end if;
--
--                when LatchValue =>
--                    -- Check for key release and latch the clock values
--                    if key_prev_state = '1' and KEY(0) = '0' then
--                        latched_clk_A <= prescaled_clk_A;
--                        latched_clk_B <= prescaled_clk_B;
--                        next_state <= DisplayValues;
--                    end if;
--                    key_prev_state <= KEY(0);
--
--                when DisplayValues =>
--                    -- Stay in this state or reset if needed
--                    enable_clk_run <= '0'; -- Stop the clock
--                    if reset_game = '1' then
--                        next_state <= Setup;
--                    else
--                        next_state <= DisplayValues;
--                    end if;
--
--                when others =>
--                    next_state <= Setup;
--            end case;
--        end if;
--    end process;
--
--    -- Display latched values on HEX
--    seg_decoder_A : SegDecoder
--        port map(D => latched_clk_A, Y => HEX0);
--
--    seg_decoder_B : SegDecoder
--        port map(D => latched_clk_B, Y => HEX1);
--
--    seg_decoder_rand : SegDecoder
--        port map(D => rand_num, Y => HEX2);
--
--end Behavioral;
