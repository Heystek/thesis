-------------------------------------------------------------------------------
-- system_window_and_fft_test_v4_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_window_and_fft_test_v4_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_we : out std_logic;
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
    window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_we : out std_logic;
    window_and_fft_test_v4_adc_user_data_valid : in std_logic;
    window_and_fft_test_v4_adc_user_datai0 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_datai1 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_datai2 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_datai3 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_dataq0 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_dataq1 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_dataq2 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_dataq3 : in std_logic_vector(7 downto 0);
    window_and_fft_test_v4_adc_user_outofrangei0 : in std_logic;
    window_and_fft_test_v4_adc_user_outofrangei1 : in std_logic;
    window_and_fft_test_v4_adc_user_outofrangeq0 : in std_logic;
    window_and_fft_test_v4_adc_user_outofrangeq1 : in std_logic;
    window_and_fft_test_v4_adc_user_sync0 : in std_logic;
    window_and_fft_test_v4_adc_user_sync1 : in std_logic;
    window_and_fft_test_v4_adc_user_sync2 : in std_logic;
    window_and_fft_test_v4_adc_user_sync3 : in std_logic;
    window_and_fft_test_v4_bypass_pfb_user_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_even_window1_data_out : in std_logic_vector(63 downto 0);
    window_and_fft_test_v4_even_window1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_even_window1_data_in : out std_logic_vector(63 downto 0);
    window_and_fft_test_v4_even_window1_we : out std_logic;
    window_and_fft_test_v4_gpio_gateway : in std_logic;
    window_and_fft_test_v4_mixer_cnt_user_data_out : in std_logic_vector(31 downto 0);
    window_and_fft_test_v4_odd_window1_data_out : in std_logic_vector(63 downto 0);
    window_and_fft_test_v4_odd_window1_addr : out std_logic_vector(9 downto 0);
    window_and_fft_test_v4_odd_window1_data_in : out std_logic_vector(63 downto 0);
    window_and_fft_test_v4_odd_window1_we : out std_logic
  );
end system_window_and_fft_test_v4_xsg_core_config_wrapper;

architecture STRUCTURE of system_window_and_fft_test_v4_xsg_core_config_wrapper is

  component window_and_fft_test_v4 is
    port (
      clk : in std_logic;
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_we : out std_logic;
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_we : out std_logic;
      window_and_fft_test_v4_adc_user_data_valid : in std_logic;
      window_and_fft_test_v4_adc_user_datai0 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_datai1 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_datai2 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_datai3 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_dataq0 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_dataq1 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_dataq2 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_dataq3 : in std_logic_vector(7 downto 0);
      window_and_fft_test_v4_adc_user_outofrangei0 : in std_logic;
      window_and_fft_test_v4_adc_user_outofrangei1 : in std_logic;
      window_and_fft_test_v4_adc_user_outofrangeq0 : in std_logic;
      window_and_fft_test_v4_adc_user_outofrangeq1 : in std_logic;
      window_and_fft_test_v4_adc_user_sync0 : in std_logic;
      window_and_fft_test_v4_adc_user_sync1 : in std_logic;
      window_and_fft_test_v4_adc_user_sync2 : in std_logic;
      window_and_fft_test_v4_adc_user_sync3 : in std_logic;
      window_and_fft_test_v4_bypass_pfb_user_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_coarse_fft_shift_mask1_user_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_even_window1_data_out : in std_logic_vector(63 downto 0);
      window_and_fft_test_v4_even_window1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_even_window1_data_in : out std_logic_vector(63 downto 0);
      window_and_fft_test_v4_even_window1_we : out std_logic;
      window_and_fft_test_v4_gpio_gateway : in std_logic;
      window_and_fft_test_v4_mixer_cnt_user_data_out : in std_logic_vector(31 downto 0);
      window_and_fft_test_v4_odd_window1_data_out : in std_logic_vector(63 downto 0);
      window_and_fft_test_v4_odd_window1_addr : out std_logic_vector(9 downto 0);
      window_and_fft_test_v4_odd_window1_data_in : out std_logic_vector(63 downto 0);
      window_and_fft_test_v4_odd_window1_we : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of window_and_fft_test_v4 : component is "user_black_box";

begin

  window_and_fft_test_v4_xsg_core_config : window_and_fft_test_v4
    port map (
      clk => clk,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_out => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_out,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_addr => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_addr,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_in => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_data_in,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_we => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM_we,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_out => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_out,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_addr => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_addr,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_in => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_data_in,
      window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_we => window_and_fft_test_v4_Subsystem_lo_1_Shared_BRAM1_we,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_out => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_out,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_addr => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_addr,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_in => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_data_in,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_we => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM_we,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_out => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_out,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_addr => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_addr,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_in => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_data_in,
      window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_we => window_and_fft_test_v4_Subsystem_lo_2_Shared_BRAM1_we,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_out => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_out,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_addr => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_addr,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_in => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_data_in,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_we => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM_we,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_out => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_out,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_addr => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_addr,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_in => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_data_in,
      window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_we => window_and_fft_test_v4_Subsystem_lo_3_Shared_BRAM1_we,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_out => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_out,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_addr => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_addr,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_in => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_data_in,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_we => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM_we,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_out => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_out,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_addr => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_addr,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_in => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_data_in,
      window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_we => window_and_fft_test_v4_Subsystem_lo_4_Shared_BRAM1_we,
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
      window_and_fft_test_v4_even_window1_addr => window_and_fft_test_v4_even_window1_addr,
      window_and_fft_test_v4_even_window1_data_in => window_and_fft_test_v4_even_window1_data_in,
      window_and_fft_test_v4_even_window1_we => window_and_fft_test_v4_even_window1_we,
      window_and_fft_test_v4_gpio_gateway => window_and_fft_test_v4_gpio_gateway,
      window_and_fft_test_v4_mixer_cnt_user_data_out => window_and_fft_test_v4_mixer_cnt_user_data_out,
      window_and_fft_test_v4_odd_window1_data_out => window_and_fft_test_v4_odd_window1_data_out,
      window_and_fft_test_v4_odd_window1_addr => window_and_fft_test_v4_odd_window1_addr,
      window_and_fft_test_v4_odd_window1_data_in => window_and_fft_test_v4_odd_window1_data_in,
      window_and_fft_test_v4_odd_window1_we => window_and_fft_test_v4_odd_window1_we
    );

end architecture STRUCTURE;

