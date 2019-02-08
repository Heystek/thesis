-------------------------------------------------------------------------------
-- system_window_design_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_window_design_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    window_design_adc_user_data_valid : in std_logic;
    window_design_adc_user_datai0 : in std_logic_vector(7 downto 0);
    window_design_adc_user_datai1 : in std_logic_vector(7 downto 0);
    window_design_adc_user_datai2 : in std_logic_vector(7 downto 0);
    window_design_adc_user_datai3 : in std_logic_vector(7 downto 0);
    window_design_adc_user_dataq0 : in std_logic_vector(7 downto 0);
    window_design_adc_user_dataq1 : in std_logic_vector(7 downto 0);
    window_design_adc_user_dataq2 : in std_logic_vector(7 downto 0);
    window_design_adc_user_dataq3 : in std_logic_vector(7 downto 0);
    window_design_adc_user_outofrangei0 : in std_logic;
    window_design_adc_user_outofrangei1 : in std_logic;
    window_design_adc_user_outofrangeq0 : in std_logic;
    window_design_adc_user_outofrangeq1 : in std_logic;
    window_design_adc_user_sync0 : in std_logic;
    window_design_adc_user_sync1 : in std_logic;
    window_design_adc_user_sync2 : in std_logic;
    window_design_adc_user_sync3 : in std_logic;
    window_design_lo_0_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_design_lo_0_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_design_lo_0_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_design_lo_0_Shared_BRAM_we : out std_logic;
    window_design_lo_1_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_design_lo_1_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_design_lo_1_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_design_lo_1_Shared_BRAM_we : out std_logic;
    window_design_lo_2_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_design_lo_2_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_design_lo_2_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_design_lo_2_Shared_BRAM_we : out std_logic;
    window_design_lo_3_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    window_design_lo_3_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
    window_design_lo_3_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    window_design_lo_3_Shared_BRAM_we : out std_logic;
    window_design_mixer_cnt_user_data_out : in std_logic_vector(31 downto 0);
    window_design_pol1_window1_dout_user_data_in : out std_logic_vector(31 downto 0);
    window_design_pol1_window1_sync_user_data_in : out std_logic_vector(31 downto 0);
    window_design_pol2_window1_dout_user_data_in : out std_logic_vector(31 downto 0);
    window_design_pol2_window1_sync_user_data_in : out std_logic_vector(31 downto 0)
  );
end system_window_design_xsg_core_config_wrapper;

architecture STRUCTURE of system_window_design_xsg_core_config_wrapper is

  component window_design is
    port (
      clk : in std_logic;
      window_design_adc_user_data_valid : in std_logic;
      window_design_adc_user_datai0 : in std_logic_vector(7 downto 0);
      window_design_adc_user_datai1 : in std_logic_vector(7 downto 0);
      window_design_adc_user_datai2 : in std_logic_vector(7 downto 0);
      window_design_adc_user_datai3 : in std_logic_vector(7 downto 0);
      window_design_adc_user_dataq0 : in std_logic_vector(7 downto 0);
      window_design_adc_user_dataq1 : in std_logic_vector(7 downto 0);
      window_design_adc_user_dataq2 : in std_logic_vector(7 downto 0);
      window_design_adc_user_dataq3 : in std_logic_vector(7 downto 0);
      window_design_adc_user_outofrangei0 : in std_logic;
      window_design_adc_user_outofrangei1 : in std_logic;
      window_design_adc_user_outofrangeq0 : in std_logic;
      window_design_adc_user_outofrangeq1 : in std_logic;
      window_design_adc_user_sync0 : in std_logic;
      window_design_adc_user_sync1 : in std_logic;
      window_design_adc_user_sync2 : in std_logic;
      window_design_adc_user_sync3 : in std_logic;
      window_design_lo_0_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_design_lo_0_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_design_lo_0_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_design_lo_0_Shared_BRAM_we : out std_logic;
      window_design_lo_1_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_design_lo_1_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_design_lo_1_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_design_lo_1_Shared_BRAM_we : out std_logic;
      window_design_lo_2_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_design_lo_2_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_design_lo_2_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_design_lo_2_Shared_BRAM_we : out std_logic;
      window_design_lo_3_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      window_design_lo_3_Shared_BRAM_addr : out std_logic_vector(9 downto 0);
      window_design_lo_3_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      window_design_lo_3_Shared_BRAM_we : out std_logic;
      window_design_mixer_cnt_user_data_out : in std_logic_vector(31 downto 0);
      window_design_pol1_window1_dout_user_data_in : out std_logic_vector(31 downto 0);
      window_design_pol1_window1_sync_user_data_in : out std_logic_vector(31 downto 0);
      window_design_pol2_window1_dout_user_data_in : out std_logic_vector(31 downto 0);
      window_design_pol2_window1_sync_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of window_design : component is "user_black_box";

begin

  window_design_xsg_core_config : window_design
    port map (
      clk => clk,
      window_design_adc_user_data_valid => window_design_adc_user_data_valid,
      window_design_adc_user_datai0 => window_design_adc_user_datai0,
      window_design_adc_user_datai1 => window_design_adc_user_datai1,
      window_design_adc_user_datai2 => window_design_adc_user_datai2,
      window_design_adc_user_datai3 => window_design_adc_user_datai3,
      window_design_adc_user_dataq0 => window_design_adc_user_dataq0,
      window_design_adc_user_dataq1 => window_design_adc_user_dataq1,
      window_design_adc_user_dataq2 => window_design_adc_user_dataq2,
      window_design_adc_user_dataq3 => window_design_adc_user_dataq3,
      window_design_adc_user_outofrangei0 => window_design_adc_user_outofrangei0,
      window_design_adc_user_outofrangei1 => window_design_adc_user_outofrangei1,
      window_design_adc_user_outofrangeq0 => window_design_adc_user_outofrangeq0,
      window_design_adc_user_outofrangeq1 => window_design_adc_user_outofrangeq1,
      window_design_adc_user_sync0 => window_design_adc_user_sync0,
      window_design_adc_user_sync1 => window_design_adc_user_sync1,
      window_design_adc_user_sync2 => window_design_adc_user_sync2,
      window_design_adc_user_sync3 => window_design_adc_user_sync3,
      window_design_lo_0_Shared_BRAM_data_out => window_design_lo_0_Shared_BRAM_data_out,
      window_design_lo_0_Shared_BRAM_addr => window_design_lo_0_Shared_BRAM_addr,
      window_design_lo_0_Shared_BRAM_data_in => window_design_lo_0_Shared_BRAM_data_in,
      window_design_lo_0_Shared_BRAM_we => window_design_lo_0_Shared_BRAM_we,
      window_design_lo_1_Shared_BRAM_data_out => window_design_lo_1_Shared_BRAM_data_out,
      window_design_lo_1_Shared_BRAM_addr => window_design_lo_1_Shared_BRAM_addr,
      window_design_lo_1_Shared_BRAM_data_in => window_design_lo_1_Shared_BRAM_data_in,
      window_design_lo_1_Shared_BRAM_we => window_design_lo_1_Shared_BRAM_we,
      window_design_lo_2_Shared_BRAM_data_out => window_design_lo_2_Shared_BRAM_data_out,
      window_design_lo_2_Shared_BRAM_addr => window_design_lo_2_Shared_BRAM_addr,
      window_design_lo_2_Shared_BRAM_data_in => window_design_lo_2_Shared_BRAM_data_in,
      window_design_lo_2_Shared_BRAM_we => window_design_lo_2_Shared_BRAM_we,
      window_design_lo_3_Shared_BRAM_data_out => window_design_lo_3_Shared_BRAM_data_out,
      window_design_lo_3_Shared_BRAM_addr => window_design_lo_3_Shared_BRAM_addr,
      window_design_lo_3_Shared_BRAM_data_in => window_design_lo_3_Shared_BRAM_data_in,
      window_design_lo_3_Shared_BRAM_we => window_design_lo_3_Shared_BRAM_we,
      window_design_mixer_cnt_user_data_out => window_design_mixer_cnt_user_data_out,
      window_design_pol1_window1_dout_user_data_in => window_design_pol1_window1_dout_user_data_in,
      window_design_pol1_window1_sync_user_data_in => window_design_pol1_window1_sync_user_data_in,
      window_design_pol2_window1_dout_user_data_in => window_design_pol2_window1_dout_user_data_in,
      window_design_pol2_window1_sync_user_data_in => window_design_pol2_window1_sync_user_data_in
    );

end architecture STRUCTURE;

