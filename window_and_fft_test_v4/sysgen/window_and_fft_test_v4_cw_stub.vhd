----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity window_and_fft_test_v4_cw_stub is
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
end window_and_fft_test_v4_cw_stub;

architecture Behavioral of window_and_fft_test_v4_cw_stub is

  component window_and_fft_test_v4_cw
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
  end component;
begin

window_and_fft_test_v4_cw_i : window_and_fft_test_v4_cw
  port map (
    ce => ce,
    clk => clk,
    window_and_fft_test_v4_adc_user_data_valid => window_and_fft_test_v4_adc_user_data_valid,
    window_and_fft_test_v4_adc_user_datai0 => window_and_fft_test_v4_adc_user_datai0,
    window_and_fft_test_v4_adc_user_datai1 => window_and_fft_test_v4_adc_user_datai1,
    window_and_fft_test_v4_adc_user_datai2 => window_and_fft_test_v4_adc_user_datai2,
    window_and_fft_test_v4_adc_user_datai3 => window_and_fft_test_v4_adc_user_datai3,
    window_and_fft_test_v4_adc_user_dataq0 => window_and_fft_test_v4_adc_user_dataq0,
    window_and_fft_test_v4_adc_user_dataq1 => window_and_fft_test_v4_adc_user_dataq1,
    window_and_fft_test_v4_adc_user_dataq2 => window_and_fft_test_v4_adc_user_dataq2,
    window_and_fft_test_v4_adc_user_dataq3 => window_and_fft_test_v4_adc_user_dataq3,
    window_and_fft_test_v4_adc_user_outofrangei0 => window_and_fft_test_v4_adc_user_outofrangei0,
    window_and_fft_test_v4_adc_user_outofrangei1 => window_and_fft_test_v4_adc_user_outofrangei1,
    window_and_fft_test_v4_adc_user_outofrangeq0 => window_and_fft_test_v4_adc_user_outofrangeq0,
    window_and_fft_test_v4_adc_user_outofrangeq1 => window_and_fft_test_v4_adc_user_outofrangeq1,
    window_and_fft_test_v4_adc_user_sync0 => window_and_fft_test_v4_adc_user_sync0,
    window_and_fft_test_v4_adc_user_sync1 => window_and_fft_test_v4_adc_user_sync1,
    window_and_fft_test_v4_adc_user_sync2 => window_and_fft_test_v4_adc_user_sync2,
    window_and_fft_test_v4_adc_user_sync3 => window_and_fft_test_v4_adc_user_sync3,
    window_and_fft_test_v4_bypass_pfb_user_data_out => window_and_fft_test_v4_bypass_pfb_user_data_out,
    window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out => window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out,
    window_and_fft_test_v4_even_window1_data_out => window_and_fft_test_v4_even_window1_data_out,
    window_and_fft_test_v4_gpio_gateway => window_and_fft_test_v4_gpio_gateway,
    window_and_fft_test_v4_mixer_cnt_user_data_out => window_and_fft_test_v4_mixer_cnt_user_data_out,
    window_and_fft_test_v4_odd_window1_data_out => window_and_fft_test_v4_odd_window1_data_out,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_out,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_out,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_out,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_out,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_out,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_out,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_out,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out => window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_out,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out10 => gateway_out10,
    gateway_out10_x0 => gateway_out10_x0,
    gateway_out11 => gateway_out11,
    gateway_out11_x0 => gateway_out11_x0,
    gateway_out12 => gateway_out12,
    gateway_out12_x0 => gateway_out12_x0,
    gateway_out13 => gateway_out13,
    gateway_out13_x0 => gateway_out13_x0,
    gateway_out14 => gateway_out14,
    gateway_out14_x0 => gateway_out14_x0,
    gateway_out15 => gateway_out15,
    gateway_out16 => gateway_out16,
    gateway_out16_x0 => gateway_out16_x0,
    gateway_out17 => gateway_out17,
    gateway_out17_x0 => gateway_out17_x0,
    gateway_out18 => gateway_out18,
    gateway_out18_x0 => gateway_out18_x0,
    gateway_out19 => gateway_out19,
    gateway_out19_x0 => gateway_out19_x0,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out1_x3 => gateway_out1_x3,
    gateway_out1_x4 => gateway_out1_x4,
    gateway_out2 => gateway_out2,
    gateway_out20 => gateway_out20,
    gateway_out20_x0 => gateway_out20_x0,
    gateway_out21 => gateway_out21,
    gateway_out21_x0 => gateway_out21_x0,
    gateway_out22 => gateway_out22,
    gateway_out22_x0 => gateway_out22_x0,
    gateway_out23 => gateway_out23,
    gateway_out24 => gateway_out24,
    gateway_out25 => gateway_out25,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out2_x1 => gateway_out2_x1,
    gateway_out2_x2 => gateway_out2_x2,
    gateway_out2_x3 => gateway_out2_x3,
    gateway_out3 => gateway_out3,
    gateway_out31 => gateway_out31,
    gateway_out32 => gateway_out32,
    gateway_out33 => gateway_out33,
    gateway_out34 => gateway_out34,
    gateway_out35 => gateway_out35,
    gateway_out36 => gateway_out36,
    gateway_out37 => gateway_out37,
    gateway_out38 => gateway_out38,
    gateway_out39 => gateway_out39,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out3_x1 => gateway_out3_x1,
    gateway_out3_x2 => gateway_out3_x2,
    gateway_out3_x3 => gateway_out3_x3,
    gateway_out4 => gateway_out4,
    gateway_out4_x0 => gateway_out4_x0,
    gateway_out5 => gateway_out5,
    gateway_out6 => gateway_out6,
    gateway_out7 => gateway_out7,
    gateway_out7_x0 => gateway_out7_x0,
    gateway_out8 => gateway_out8,
    gateway_out8_x0 => gateway_out8_x0,
    gateway_out9 => gateway_out9,
    gateway_out9_x0 => gateway_out9_x0,
    gateway_out_x0 => gateway_out_x0,
    gateway_out_x1 => gateway_out_x1,
    gateway_out_x2 => gateway_out_x2,
    window_and_fft_test_v4_even_window1_addr => window_and_fft_test_v4_even_window1_addr,
    window_and_fft_test_v4_even_window1_data_in => window_and_fft_test_v4_even_window1_data_in,
    window_and_fft_test_v4_even_window1_we => window_and_fft_test_v4_even_window1_we,
    window_and_fft_test_v4_odd_window1_addr => window_and_fft_test_v4_odd_window1_addr,
    window_and_fft_test_v4_odd_window1_data_in => window_and_fft_test_v4_odd_window1_data_in,
    window_and_fft_test_v4_odd_window1_we => window_and_fft_test_v4_odd_window1_we,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_addr,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_data_in,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_1_shared_bram1_we,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_1_shared_bram_addr,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_1_shared_bram_data_in,
    window_and_fft_test_v4_subsystem_lo_1_shared_bram_we => window_and_fft_test_v4_subsystem_lo_1_shared_bram_we,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_addr,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_data_in,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_2_shared_bram1_we,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_2_shared_bram_addr,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_2_shared_bram_data_in,
    window_and_fft_test_v4_subsystem_lo_2_shared_bram_we => window_and_fft_test_v4_subsystem_lo_2_shared_bram_we,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_addr,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_data_in,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_3_shared_bram1_we,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_3_shared_bram_addr,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_3_shared_bram_data_in,
    window_and_fft_test_v4_subsystem_lo_3_shared_bram_we => window_and_fft_test_v4_subsystem_lo_3_shared_bram_we,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_addr,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_data_in,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we => window_and_fft_test_v4_subsystem_lo_4_shared_bram1_we,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr => window_and_fft_test_v4_subsystem_lo_4_shared_bram_addr,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in => window_and_fft_test_v4_subsystem_lo_4_shared_bram_data_in,
    window_and_fft_test_v4_subsystem_lo_4_shared_bram_we => window_and_fft_test_v4_subsystem_lo_4_shared_bram_we);
end Behavioral;

