
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlclockdriver is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5;
    use_bufg: integer := 0
  );
  port (
    sysclk: in std_logic;
    sysclr: in std_logic;
    sysce: in std_logic;
    clk: out std_logic;
    clr: out std_logic;
    ce: out std_logic;
    ce_logic: out std_logic
  );
end xlclockdriver;
architecture behavior of xlclockdriver is
  component bufg
    port (
      i: in std_logic;
      o: out std_logic
    );
  end component;
  component synth_reg_w_init
    generic (
      width: integer;
      init_index: integer;
      init_value: bit_vector;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function size_of_uint(inp: integer; power_of_2: boolean)
    return integer
  is
    constant inp_vec: std_logic_vector(31 downto 0) :=
      integer_to_std_logic_vector(inp,32, xlUnsigned);
    variable result: integer;
  begin
    result := 32;
    for i in 0 to 31 loop
      if inp_vec(i) = '1' then
        result := i;
      end if;
    end loop;
    if power_of_2 then
      return result;
    else
      return result+1;
    end if;
  end;
  function is_power_of_2(inp: std_logic_vector)
    return boolean
  is
    constant width: integer := inp'length;
    variable vec: std_logic_vector(width - 1 downto 0);
    variable single_bit_set: boolean;
    variable more_than_one_bit_set: boolean;
    variable result: boolean;
  begin
    vec := inp;
    single_bit_set := false;
    more_than_one_bit_set := false;
    -- synopsys translate_off
    if (is_XorU(vec)) then
      return false;
    end if;
     -- synopsys translate_on
    if width > 0 then
      for i in 0 to width - 1 loop
        if vec(i) = '1' then
          if single_bit_set then
            more_than_one_bit_set := true;
          end if;
          single_bit_set := true;
        end if;
      end loop;
    end if;
    if (single_bit_set and not(more_than_one_bit_set)) then
      result := true;
    else
      result := false;
    end if;
    return result;
  end;
  function ce_reg_init_val(index, period : integer)
    return integer
  is
     variable result: integer;
   begin
      result := 0;
      if ((index mod period) = 0) then
          result := 1;
      end if;
      return result;
  end;
  function remaining_pipe_regs(num_pipeline_regs, period : integer)
    return integer
  is
     variable factor, result: integer;
  begin
      factor := (num_pipeline_regs / period);
      result := num_pipeline_regs - (period * factor) + 1;
      return result;
  end;

  function sg_min(L, R: INTEGER) return INTEGER is
  begin
      if L < R then
            return L;
      else
            return R;
      end if;
  end;
  constant max_pipeline_regs : integer := 8;
  constant pipe_regs : integer := 5;
  constant num_pipeline_regs : integer := sg_min(pipeline_regs, max_pipeline_regs);
  constant rem_pipeline_regs : integer := remaining_pipe_regs(num_pipeline_regs,period);
  constant period_floor: integer := max(2, period);
  constant power_of_2_counter: boolean :=
    is_power_of_2(integer_to_std_logic_vector(period_floor,32, xlUnsigned));
  constant cnt_width: integer :=
    size_of_uint(period_floor, power_of_2_counter);
  constant clk_for_ce_pulse_minus1: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector((period_floor - 2),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus2: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - 3),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus_regs: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - rem_pipeline_regs),cnt_width, xlUnsigned);
  signal clk_num: unsigned(cnt_width - 1 downto 0) := (others => '0');
  signal ce_vec : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of ce_vec:signal is "REDUCE";
  signal ce_vec_logic : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT of ce_vec_logic:signal is "REDUCE";
  signal internal_ce: std_logic_vector(0 downto 0);
  signal internal_ce_logic: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  clk <= sysclk;
  clr <= sysclr;
  cntr_gen: process(sysclk)
  begin
    if sysclk'event and sysclk = '1'  then
      if (sysce = '1') then
        if ((cnt_clr_dly(0) = '1') or (sysclr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
    end if;
  end process;
  clr_gen: process(clk_num, sysclr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= sysclr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or sysclr = '1') then
        cnt_clr(0) <= '1';
      else
        cnt_clr(0) <= '0';
      end if;
    end if;
  end process;
  clr_reg: synth_reg_w_init
    generic map (
      width => 1,
      init_index => 0,
      init_value => b"0000",
      latency => 1
    )
    port map (
      i => cnt_clr,
      ce => sysce,
      clr => sysclr,
      clk => sysclk,
      o => cnt_clr_dly
    );
  pipelined_ce : if period > 1 generate
      ce_gen: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec(num_pipeline_regs) <= '1';
          else
              ce_vec(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  pipelined_ce_logic: if period > 1 generate
      ce_gen_logic: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec_logic(num_pipeline_regs) <= '1';
          else
              ce_vec_logic(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_logic_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_logic_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec_logic(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec_logic(index-1 downto index-1)
                  );
      end generate;
      internal_ce_logic <= ce_vec_logic(0 downto 0);
  end generate;
  use_bufg_true: if period > 1 and use_bufg = 1 generate
    ce_bufg_inst: bufg
      port map (
        i => internal_ce(0),
        o => ce
      );
    ce_bufg_inst_logic: bufg
      port map (
        i => internal_ce_logic(0),
        o => ce_logic
      );
  end generate;
  use_bufg_false: if period > 1 and (use_bufg = 0) generate
    ce <= internal_ce(0);
    ce_logic <= internal_ce_logic(0);
  end generate;
  generate_system_clk: if period = 1 generate
    ce <= sysce;
    ce_logic <= sysce;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity default_clock_driver_window_and_fft_test_v4 is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    ce_1: out std_logic; 
    ce_2500: out std_logic; 
    ce_50: out std_logic; 
    ce_logic_1: out std_logic; 
    clk_1: out std_logic; 
    clk_2500: out std_logic; 
    clk_50: out std_logic
  );
end default_clock_driver_window_and_fft_test_v4;

architecture structural of default_clock_driver_window_and_fft_test_v4 is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_ce_logic: std_logic;
  signal xlclockdriver_1_clk: std_logic;
  signal xlclockdriver_2500_ce: std_logic;
  signal xlclockdriver_2500_clk: std_logic;
  signal xlclockdriver_50_ce: std_logic;
  signal xlclockdriver_50_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  ce_1 <= xlclockdriver_1_ce;
  ce_2500 <= xlclockdriver_2500_ce;
  ce_50 <= xlclockdriver_50_ce;
  ce_logic_1 <= xlclockdriver_1_ce_logic;
  clk_1 <= xlclockdriver_1_clk;
  clk_2500 <= xlclockdriver_2500_clk;
  clk_50 <= xlclockdriver_50_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      ce_logic => xlclockdriver_1_ce_logic,
      clk => xlclockdriver_1_clk
    );

  xlclockdriver_2500: entity work.xlclockdriver
    generic map (
      log_2_period => 12,
      period => 2500,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_2500_ce,
      clk => xlclockdriver_2500_clk
    );

  xlclockdriver_50: entity work.xlclockdriver
    generic map (
      log_2_period => 6,
      period => 50,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_50_ce,
      clk => xlclockdriver_50_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity window_and_fft_test_v4_cw is
  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    window_and_fft_test_v4_adc_user_data_valid: in std_logic; 
    window_and_fft_test_v4_adc_user_datai0: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_datai1: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_datai2: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_datai3: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    window_and_fft_test_v4_adc_user_outofrangei0: in std_logic; 
    window_and_fft_test_v4_adc_user_outofrangei1: in std_logic; 
    window_and_fft_test_v4_adc_user_outofrangeq0: in std_logic; 
    window_and_fft_test_v4_adc_user_outofrangeq1: in std_logic; 
    window_and_fft_test_v4_adc_user_sync0: in std_logic; 
    window_and_fft_test_v4_adc_user_sync1: in std_logic; 
    window_and_fft_test_v4_adc_user_sync2: in std_logic; 
    window_and_fft_test_v4_adc_user_sync3: in std_logic; 
    window_and_fft_test_v4_bypass_pfb_user_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_even_window1_data_out: in std_logic_vector(63 downto 0); 
    window_and_fft_test_v4_gpio_gateway: in std_logic; 
    window_and_fft_test_v4_mixer_cnt_user_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_odd_window1_data_out: in std_logic_vector(63 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    gateway_out: out std_logic_vector(31 downto 0); 
    gateway_out1: out std_logic_vector(15 downto 0); 
    gateway_out10: out std_logic_vector(15 downto 0); 
    gateway_out10_x0: out std_logic_vector(7 downto 0); 
    gateway_out11: out std_logic_vector(17 downto 0); 
    gateway_out11_x0: out std_logic_vector(7 downto 0); 
    gateway_out12: out std_logic_vector(15 downto 0); 
    gateway_out12_x0: out std_logic_vector(7 downto 0); 
    gateway_out13: out std_logic; 
    gateway_out13_x0: out std_logic_vector(7 downto 0); 
    gateway_out14: out std_logic_vector(15 downto 0); 
    gateway_out14_x0: out std_logic_vector(15 downto 0); 
    gateway_out15: out std_logic_vector(15 downto 0); 
    gateway_out16: out std_logic_vector(15 downto 0); 
    gateway_out16_x0: out std_logic_vector(15 downto 0); 
    gateway_out17: out std_logic_vector(17 downto 0); 
    gateway_out17_x0: out std_logic_vector(15 downto 0); 
    gateway_out18: out std_logic_vector(15 downto 0); 
    gateway_out18_x0: out std_logic_vector(15 downto 0); 
    gateway_out19: out std_logic_vector(15 downto 0); 
    gateway_out19_x0: out std_logic_vector(15 downto 0); 
    gateway_out1_x0: out std_logic_vector(7 downto 0); 
    gateway_out1_x1: out std_logic_vector(31 downto 0); 
    gateway_out1_x2: out std_logic_vector(31 downto 0); 
    gateway_out1_x3: out std_logic_vector(31 downto 0); 
    gateway_out1_x4: out std_logic_vector(31 downto 0); 
    gateway_out2: out std_logic_vector(7 downto 0); 
    gateway_out20: out std_logic_vector(17 downto 0); 
    gateway_out20_x0: out std_logic_vector(15 downto 0); 
    gateway_out21: out std_logic_vector(15 downto 0); 
    gateway_out21_x0: out std_logic_vector(15 downto 0); 
    gateway_out22: out std_logic_vector(15 downto 0); 
    gateway_out22_x0: out std_logic_vector(15 downto 0); 
    gateway_out23: out std_logic_vector(15 downto 0); 
    gateway_out24: out std_logic_vector(15 downto 0); 
    gateway_out25: out std_logic_vector(15 downto 0); 
    gateway_out2_x0: out std_logic_vector(31 downto 0); 
    gateway_out2_x1: out std_logic_vector(31 downto 0); 
    gateway_out2_x2: out std_logic_vector(31 downto 0); 
    gateway_out2_x3: out std_logic_vector(31 downto 0); 
    gateway_out3: out std_logic_vector(15 downto 0); 
    gateway_out31: out std_logic_vector(15 downto 0); 
    gateway_out32: out std_logic_vector(7 downto 0); 
    gateway_out33: out std_logic_vector(7 downto 0); 
    gateway_out34: out std_logic_vector(7 downto 0); 
    gateway_out35: out std_logic_vector(7 downto 0); 
    gateway_out36: out std_logic_vector(7 downto 0); 
    gateway_out37: out std_logic_vector(7 downto 0); 
    gateway_out38: out std_logic_vector(7 downto 0); 
    gateway_out39: out std_logic_vector(7 downto 0); 
    gateway_out3_x0: out std_logic_vector(31 downto 0); 
    gateway_out3_x1: out std_logic_vector(31 downto 0); 
    gateway_out3_x2: out std_logic_vector(31 downto 0); 
    gateway_out3_x3: out std_logic_vector(31 downto 0); 
    gateway_out4: out std_logic_vector(15 downto 0); 
    gateway_out4_x0: out std_logic_vector(15 downto 0); 
    gateway_out5: out std_logic_vector(15 downto 0); 
    gateway_out6: out std_logic_vector(15 downto 0); 
    gateway_out7: out std_logic_vector(15 downto 0); 
    gateway_out7_x0: out std_logic_vector(15 downto 0); 
    gateway_out8: out std_logic_vector(17 downto 0); 
    gateway_out8_x0: out std_logic_vector(7 downto 0); 
    gateway_out9: out std_logic_vector(15 downto 0); 
    gateway_out9_x0: out std_logic_vector(7 downto 0); 
    gateway_out_x0: out std_logic_vector(31 downto 0); 
    gateway_out_x1: out std_logic_vector(31 downto 0); 
    gateway_out_x2: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_even_window1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_even_window1_data_in: out std_logic_vector(63 downto 0); 
    window_and_fft_test_v4_even_window1_we: out std_logic; 
    window_and_fft_test_v4_odd_window1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_odd_window1_data_in: out std_logic_vector(63 downto 0); 
    window_and_fft_test_v4_odd_window1_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we: out std_logic; 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr: out std_logic_vector(9 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in: out std_logic_vector(31 downto 0); 
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_we: out std_logic
  );
end window_and_fft_test_v4_cw;

architecture structural of window_and_fft_test_v4_cw is
  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type: string;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal ce_1_sg_x644: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x644: signal is "REDUCE";
  signal ce_2500_sg_x9: std_logic;
  attribute MAX_FANOUT of ce_2500_sg_x9: signal is "REDUCE";
  signal ce_50_sg_x0: std_logic;
  attribute MAX_FANOUT of ce_50_sg_x0: signal is "REDUCE";
  signal ce_logic_1_sg_x0: std_logic;
  signal clkNet: std_logic;
  signal clk_1_sg_x644: std_logic;
  signal clk_2500_sg_x9: std_logic;
  signal clk_50_sg_x0: std_logic;
  signal delay80_q_net_x21: std_logic_vector(15 downto 0);
  signal delay80_q_net_x22: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x5: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x6: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x7: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x6: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x7: std_logic_vector(15 downto 0);
  signal gateway_out11_net: std_logic_vector(17 downto 0);
  signal gateway_out13_net: std_logic;
  signal gateway_out14_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out15_net: std_logic_vector(15 downto 0);
  signal gateway_out16_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out17_net: std_logic_vector(17 downto 0);
  signal gateway_out17_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out18_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out19_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out20_net: std_logic_vector(17 downto 0);
  signal gateway_out20_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out21_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out22_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out23_net: std_logic_vector(15 downto 0);
  signal gateway_out24_net: std_logic_vector(15 downto 0);
  signal gateway_out25_net: std_logic_vector(15 downto 0);
  signal gateway_out4_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out5_net: std_logic_vector(15 downto 0);
  signal gateway_out6_net: std_logic_vector(15 downto 0);
  signal gateway_out7_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out8_net: std_logic_vector(17 downto 0);
  signal gateway_out8_x0_net: std_logic_vector(7 downto 0);
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal reinterpret_out_output_port_net_x20: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x21: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x22: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x23: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x24: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x25: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x26: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x27: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x28: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x29: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x30: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x31: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x32: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x33: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x34: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x35: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x26: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x28: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x29: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x30: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x31: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x32: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x33: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x34: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x35: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x36: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x37: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x38: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x39: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x40: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x41: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_data_valid_net: std_logic;
  signal window_and_fft_test_v4_adc_user_datai0_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_datai1_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_datai2_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_datai3_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_dataq0_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_dataq1_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_dataq2_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_dataq3_net: std_logic_vector(7 downto 0);
  signal window_and_fft_test_v4_adc_user_outofrangei0_net: std_logic;
  signal window_and_fft_test_v4_adc_user_outofrangei1_net: std_logic;
  signal window_and_fft_test_v4_adc_user_outofrangeq0_net: std_logic;
  signal window_and_fft_test_v4_adc_user_outofrangeq1_net: std_logic;
  signal window_and_fft_test_v4_adc_user_sync0_net: std_logic;
  signal window_and_fft_test_v4_adc_user_sync1_net: std_logic;
  signal window_and_fft_test_v4_adc_user_sync2_net: std_logic;
  signal window_and_fft_test_v4_adc_user_sync3_net: std_logic;
  signal window_and_fft_test_v4_bypass_pfb_user_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_even_window1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_even_window1_data_in_net: std_logic_vector(63 downto 0);
  signal window_and_fft_test_v4_even_window1_data_out_net: std_logic_vector(63 downto 0);
  signal window_and_fft_test_v4_even_window1_we_net: std_logic;
  signal window_and_fft_test_v4_gpio_gateway_net: std_logic;
  signal window_and_fft_test_v4_mixer_cnt_user_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_odd_window1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_odd_window1_data_in_net: std_logic_vector(63 downto 0);
  signal window_and_fft_test_v4_odd_window1_data_out_net: std_logic_vector(63 downto 0);
  signal window_and_fft_test_v4_odd_window1_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_1_shared_bram_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_2_shared_bram_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_3_shared_bram_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we_net: std_logic;
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_and_fft_test_v4_subsystem_lo_4_shared_bram_we_net: std_logic;

begin
  clkNet <= clk;
  window_and_fft_test_v4_adc_user_data_valid_net <= window_and_fft_test_v4_adc_user_data_valid;
  window_and_fft_test_v4_adc_user_datai0_net <= window_and_fft_test_v4_adc_user_datai0;
  window_and_fft_test_v4_adc_user_datai1_net <= window_and_fft_test_v4_adc_user_datai1;
  window_and_fft_test_v4_adc_user_datai2_net <= window_and_fft_test_v4_adc_user_datai2;
  window_and_fft_test_v4_adc_user_datai3_net <= window_and_fft_test_v4_adc_user_datai3;
  window_and_fft_test_v4_adc_user_dataq0_net <= window_and_fft_test_v4_adc_user_dataq0;
  window_and_fft_test_v4_adc_user_dataq1_net <= window_and_fft_test_v4_adc_user_dataq1;
  window_and_fft_test_v4_adc_user_dataq2_net <= window_and_fft_test_v4_adc_user_dataq2;
  window_and_fft_test_v4_adc_user_dataq3_net <= window_and_fft_test_v4_adc_user_dataq3;
  window_and_fft_test_v4_adc_user_outofrangei0_net <= window_and_fft_test_v4_adc_user_outofrangei0;
  window_and_fft_test_v4_adc_user_outofrangei1_net <= window_and_fft_test_v4_adc_user_outofrangei1;
  window_and_fft_test_v4_adc_user_outofrangeq0_net <= window_and_fft_test_v4_adc_user_outofrangeq0;
  window_and_fft_test_v4_adc_user_outofrangeq1_net <= window_and_fft_test_v4_adc_user_outofrangeq1;
  window_and_fft_test_v4_adc_user_sync0_net <= window_and_fft_test_v4_adc_user_sync0;
  window_and_fft_test_v4_adc_user_sync1_net <= window_and_fft_test_v4_adc_user_sync1;
  window_and_fft_test_v4_adc_user_sync2_net <= window_and_fft_test_v4_adc_user_sync2;
  window_and_fft_test_v4_adc_user_sync3_net <= window_and_fft_test_v4_adc_user_sync3;
  window_and_fft_test_v4_bypass_pfb_user_data_out_net <= window_and_fft_test_v4_bypass_pfb_user_data_out;
  window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out_net <= window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out;
  window_and_fft_test_v4_even_window1_data_out_net <= window_and_fft_test_v4_even_window1_data_out;
  window_and_fft_test_v4_gpio_gateway_net <= window_and_fft_test_v4_gpio_gateway;
  window_and_fft_test_v4_mixer_cnt_user_data_out_net <= window_and_fft_test_v4_mixer_cnt_user_data_out;
  window_and_fft_test_v4_odd_window1_data_out_net <= window_and_fft_test_v4_odd_window1_data_out;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out_net <= window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out_net <= window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out_net <= window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out_net <= window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out_net <= window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out_net <= window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out_net <= window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out_net <= window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out;
  gateway_out <= reinterpret_out_output_port_net_x20;
  gateway_out1 <= force_re_output_port_net_x2;
  gateway_out10 <= force_re_output_port_net_x3;
  gateway_out10_x0 <= reinterpret_output_port_net_x29;
  gateway_out11 <= gateway_out11_net;
  gateway_out11_x0 <= reinterpret_output_port_net_x41;
  gateway_out12 <= force_re_output_port_net_x5;
  gateway_out12_x0 <= reinterpret_output_port_net_x31;
  gateway_out13 <= gateway_out13_net;
  gateway_out13_x0 <= reinterpret_output_port_net_x39;
  gateway_out14 <= force_im_output_port_net_x2;
  gateway_out14_x0 <= gateway_out14_x0_net;
  gateway_out15 <= gateway_out15_net;
  gateway_out16 <= force_re_output_port_net_x6;
  gateway_out16_x0 <= gateway_out16_x0_net;
  gateway_out17 <= gateway_out17_net;
  gateway_out17_x0 <= gateway_out17_x0_net;
  gateway_out18 <= force_re_output_port_net_x7;
  gateway_out18_x0 <= gateway_out18_x0_net;
  gateway_out19 <= force_im_output_port_net_x5;
  gateway_out19_x0 <= gateway_out19_x0_net;
  gateway_out1_x0 <= reinterpret_output_port_net_x37;
  gateway_out1_x1 <= reinterpret_out_output_port_net_x22;
  gateway_out1_x2 <= reinterpret_out_output_port_net_x26;
  gateway_out1_x3 <= reinterpret_out_output_port_net_x30;
  gateway_out1_x4 <= reinterpret_out_output_port_net_x34;
  gateway_out2 <= reinterpret_output_port_net_x35;
  gateway_out20 <= gateway_out20_net;
  gateway_out20_x0 <= gateway_out20_x0_net;
  gateway_out21 <= force_im_output_port_net_x6;
  gateway_out21_x0 <= gateway_out21_x0_net;
  gateway_out22 <= force_im_output_port_net_x7;
  gateway_out22_x0 <= gateway_out22_x0_net;
  gateway_out23 <= gateway_out23_net;
  gateway_out24 <= gateway_out24_net;
  gateway_out25 <= gateway_out25_net;
  gateway_out2_x0 <= reinterpret_out_output_port_net_x21;
  gateway_out2_x1 <= reinterpret_out_output_port_net_x25;
  gateway_out2_x2 <= reinterpret_out_output_port_net_x29;
  gateway_out2_x3 <= reinterpret_out_output_port_net_x33;
  gateway_out3 <= delay80_q_net_x22;
  gateway_out31 <= delay80_q_net_x21;
  gateway_out32 <= reinterpret_output_port_net_x28;
  gateway_out33 <= reinterpret_output_port_net_x30;
  gateway_out34 <= reinterpret_output_port_net_x32;
  gateway_out35 <= reinterpret_output_port_net_x34;
  gateway_out36 <= reinterpret_output_port_net_x26;
  gateway_out37 <= reinterpret_output_port_net_x36;
  gateway_out38 <= reinterpret_output_port_net_x38;
  gateway_out39 <= reinterpret_output_port_net_x40;
  gateway_out3_x0 <= reinterpret_out_output_port_net_x23;
  gateway_out3_x1 <= reinterpret_out_output_port_net_x27;
  gateway_out3_x2 <= reinterpret_out_output_port_net_x31;
  gateway_out3_x3 <= reinterpret_out_output_port_net_x35;
  gateway_out4 <= force_re_output_port_net_x4;
  gateway_out4_x0 <= gateway_out4_x0_net;
  gateway_out5 <= gateway_out5_net;
  gateway_out6 <= gateway_out6_net;
  gateway_out7 <= force_im_output_port_net_x3;
  gateway_out7_x0 <= gateway_out7_x0_net;
  gateway_out8 <= gateway_out8_net;
  gateway_out8_x0 <= gateway_out8_x0_net;
  gateway_out9 <= force_im_output_port_net_x4;
  gateway_out9_x0 <= reinterpret_output_port_net_x33;
  gateway_out_x0 <= reinterpret_out_output_port_net_x24;
  gateway_out_x1 <= reinterpret_out_output_port_net_x28;
  gateway_out_x2 <= reinterpret_out_output_port_net_x32;
  window_and_fft_test_v4_even_window1_addr <= window_and_fft_test_v4_even_window1_addr_net;
  window_and_fft_test_v4_even_window1_data_in <= window_and_fft_test_v4_even_window1_data_in_net;
  window_and_fft_test_v4_even_window1_we <= window_and_fft_test_v4_even_window1_we_net;
  window_and_fft_test_v4_odd_window1_addr <= window_and_fft_test_v4_odd_window1_addr_net;
  window_and_fft_test_v4_odd_window1_data_in <= window_and_fft_test_v4_odd_window1_data_in_net;
  window_and_fft_test_v4_odd_window1_we <= window_and_fft_test_v4_odd_window1_we_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr <= window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in <= window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we <= window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr <= window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in <= window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in_net;
  window_and_fft_test_v4_subsystem_lo_1_shared_bram_we <= window_and_fft_test_v4_subsystem_lo_1_shared_bram_we_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr <= window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in <= window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we <= window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr <= window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in <= window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in_net;
  window_and_fft_test_v4_subsystem_lo_2_shared_bram_we <= window_and_fft_test_v4_subsystem_lo_2_shared_bram_we_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr <= window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in <= window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we <= window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr <= window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in <= window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in_net;
  window_and_fft_test_v4_subsystem_lo_3_shared_bram_we <= window_and_fft_test_v4_subsystem_lo_3_shared_bram_we_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr <= window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in <= window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we <= window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr <= window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in <= window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in_net;
  window_and_fft_test_v4_subsystem_lo_4_shared_bram_we <= window_and_fft_test_v4_subsystem_lo_4_shared_bram_we_net;

  default_clock_driver_window_and_fft_test_v4_x0: entity work.default_clock_driver_window_and_fft_test_v4
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x644,
      ce_2500 => ce_2500_sg_x9,
      ce_50 => ce_50_sg_x0,
      ce_logic_1 => ce_logic_1_sg_x0,
      clk_1 => clk_1_sg_x644,
      clk_2500 => clk_2500_sg_x9,
      clk_50 => clk_50_sg_x0
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  window_and_fft_test_v4_x0: entity work.window_and_fft_test_v4
    port map (
      ce_1 => ce_1_sg_x644,
      ce_2500 => ce_2500_sg_x9,
      ce_50 => ce_50_sg_x0,
      ce_logic_1 => ce_logic_1_sg_x0,
      clk_1 => clk_1_sg_x644,
      clk_2500 => clk_2500_sg_x9,
      clk_50 => clk_50_sg_x0,
      window_and_fft_test_v4_adc_user_data_valid => window_and_fft_test_v4_adc_user_data_valid_net,
      window_and_fft_test_v4_adc_user_datai0 => window_and_fft_test_v4_adc_user_datai0_net,
      window_and_fft_test_v4_adc_user_datai1 => window_and_fft_test_v4_adc_user_datai1_net,
      window_and_fft_test_v4_adc_user_datai2 => window_and_fft_test_v4_adc_user_datai2_net,
      window_and_fft_test_v4_adc_user_datai3 => window_and_fft_test_v4_adc_user_datai3_net,
      window_and_fft_test_v4_adc_user_dataq0 => window_and_fft_test_v4_adc_user_dataq0_net,
      window_and_fft_test_v4_adc_user_dataq1 => window_and_fft_test_v4_adc_user_dataq1_net,
      window_and_fft_test_v4_adc_user_dataq2 => window_and_fft_test_v4_adc_user_dataq2_net,
      window_and_fft_test_v4_adc_user_dataq3 => window_and_fft_test_v4_adc_user_dataq3_net,
      window_and_fft_test_v4_adc_user_outofrangei0 => window_and_fft_test_v4_adc_user_outofrangei0_net,
      window_and_fft_test_v4_adc_user_outofrangei1 => window_and_fft_test_v4_adc_user_outofrangei1_net,
      window_and_fft_test_v4_adc_user_outofrangeq0 => window_and_fft_test_v4_adc_user_outofrangeq0_net,
      window_and_fft_test_v4_adc_user_outofrangeq1 => window_and_fft_test_v4_adc_user_outofrangeq1_net,
      window_and_fft_test_v4_adc_user_sync0 => window_and_fft_test_v4_adc_user_sync0_net,
      window_and_fft_test_v4_adc_user_sync1 => window_and_fft_test_v4_adc_user_sync1_net,
      window_and_fft_test_v4_adc_user_sync2 => window_and_fft_test_v4_adc_user_sync2_net,
      window_and_fft_test_v4_adc_user_sync3 => window_and_fft_test_v4_adc_user_sync3_net,
      window_and_fft_test_v4_bypass_pfb_user_data_out => window_and_fft_test_v4_bypass_pfb_user_data_out_net,
      window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out => window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out_net,
      window_and_fft_test_v4_even_window1_data_out => window_and_fft_test_v4_even_window1_data_out_net,
      window_and_fft_test_v4_gpio_gateway => window_and_fft_test_v4_gpio_gateway_net,
      window_and_fft_test_v4_mixer_cnt_user_data_out => window_and_fft_test_v4_mixer_cnt_user_data_out_net,
      window_and_fft_test_v4_odd_window1_data_out => window_and_fft_test_v4_odd_window1_data_out_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out_net,
      gateway_out => reinterpret_out_output_port_net_x20,
      gateway_out1 => force_re_output_port_net_x2,
      gateway_out10 => force_re_output_port_net_x3,
      gateway_out10_x0 => reinterpret_output_port_net_x29,
      gateway_out11 => gateway_out11_net,
      gateway_out11_x0 => reinterpret_output_port_net_x41,
      gateway_out12 => force_re_output_port_net_x5,
      gateway_out12_x0 => reinterpret_output_port_net_x31,
      gateway_out13 => gateway_out13_net,
      gateway_out13_x0 => reinterpret_output_port_net_x39,
      gateway_out14 => force_im_output_port_net_x2,
      gateway_out14_x0 => gateway_out14_x0_net,
      gateway_out15 => gateway_out15_net,
      gateway_out16 => force_re_output_port_net_x6,
      gateway_out16_x0 => gateway_out16_x0_net,
      gateway_out17 => gateway_out17_net,
      gateway_out17_x0 => gateway_out17_x0_net,
      gateway_out18 => force_re_output_port_net_x7,
      gateway_out18_x0 => gateway_out18_x0_net,
      gateway_out19 => force_im_output_port_net_x5,
      gateway_out19_x0 => gateway_out19_x0_net,
      gateway_out1_x0 => reinterpret_output_port_net_x37,
      gateway_out1_x1 => reinterpret_out_output_port_net_x22,
      gateway_out1_x2 => reinterpret_out_output_port_net_x26,
      gateway_out1_x3 => reinterpret_out_output_port_net_x30,
      gateway_out1_x4 => reinterpret_out_output_port_net_x34,
      gateway_out2 => reinterpret_output_port_net_x35,
      gateway_out20 => gateway_out20_net,
      gateway_out20_x0 => gateway_out20_x0_net,
      gateway_out21 => force_im_output_port_net_x6,
      gateway_out21_x0 => gateway_out21_x0_net,
      gateway_out22 => force_im_output_port_net_x7,
      gateway_out22_x0 => gateway_out22_x0_net,
      gateway_out23 => gateway_out23_net,
      gateway_out24 => gateway_out24_net,
      gateway_out25 => gateway_out25_net,
      gateway_out2_x0 => reinterpret_out_output_port_net_x21,
      gateway_out2_x1 => reinterpret_out_output_port_net_x25,
      gateway_out2_x2 => reinterpret_out_output_port_net_x29,
      gateway_out2_x3 => reinterpret_out_output_port_net_x33,
      gateway_out3 => delay80_q_net_x22,
      gateway_out31 => delay80_q_net_x21,
      gateway_out32 => reinterpret_output_port_net_x28,
      gateway_out33 => reinterpret_output_port_net_x30,
      gateway_out34 => reinterpret_output_port_net_x32,
      gateway_out35 => reinterpret_output_port_net_x34,
      gateway_out36 => reinterpret_output_port_net_x26,
      gateway_out37 => reinterpret_output_port_net_x36,
      gateway_out38 => reinterpret_output_port_net_x38,
      gateway_out39 => reinterpret_output_port_net_x40,
      gateway_out3_x0 => reinterpret_out_output_port_net_x23,
      gateway_out3_x1 => reinterpret_out_output_port_net_x27,
      gateway_out3_x2 => reinterpret_out_output_port_net_x31,
      gateway_out3_x3 => reinterpret_out_output_port_net_x35,
      gateway_out4 => force_re_output_port_net_x4,
      gateway_out4_x0 => gateway_out4_x0_net,
      gateway_out5 => gateway_out5_net,
      gateway_out6 => gateway_out6_net,
      gateway_out7 => force_im_output_port_net_x3,
      gateway_out7_x0 => gateway_out7_x0_net,
      gateway_out8 => gateway_out8_net,
      gateway_out8_x0 => gateway_out8_x0_net,
      gateway_out9 => force_im_output_port_net_x4,
      gateway_out9_x0 => reinterpret_output_port_net_x33,
      gateway_out_x0 => reinterpret_out_output_port_net_x24,
      gateway_out_x1 => reinterpret_out_output_port_net_x28,
      gateway_out_x2 => reinterpret_out_output_port_net_x32,
      window_and_fft_test_v4_even_window1_addr => window_and_fft_test_v4_even_window1_addr_net,
      window_and_fft_test_v4_even_window1_data_in => window_and_fft_test_v4_even_window1_data_in_net,
      window_and_fft_test_v4_even_window1_we => window_and_fft_test_v4_even_window1_we_net,
      window_and_fft_test_v4_odd_window1_addr => window_and_fft_test_v4_odd_window1_addr_net,
      window_and_fft_test_v4_odd_window1_data_in => window_and_fft_test_v4_odd_window1_data_in_net,
      window_and_fft_test_v4_odd_window1_we => window_and_fft_test_v4_odd_window1_we_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in_net,
      window_and_fft_test_v4_subsystem_lo_1_shared_bram_we => window_and_fft_test_v4_subsystem_lo_1_shared_bram_we_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in_net,
      window_and_fft_test_v4_subsystem_lo_2_shared_bram_we => window_and_fft_test_v4_subsystem_lo_2_shared_bram_we_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in_net,
      window_and_fft_test_v4_subsystem_lo_3_shared_bram_we => window_and_fft_test_v4_subsystem_lo_3_shared_bram_we_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in_net,
      window_and_fft_test_v4_subsystem_lo_4_shared_bram_we => window_and_fft_test_v4_subsystem_lo_4_shared_bram_we_net
    );

end structural;
