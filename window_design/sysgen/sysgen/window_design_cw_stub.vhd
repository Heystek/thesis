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

entity window_design_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 6.25 ns (160.0 Mhz)
      window_design_adc_user_data_valid: in std_logic; 
      window_design_adc_user_datai0: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai1: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai2: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai3: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq0: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq1: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq2: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq3: in std_logic_vector(7 downto 0); 
      window_design_adc_user_outofrangei0: in std_logic; 
      window_design_adc_user_outofrangei1: in std_logic; 
      window_design_adc_user_outofrangeq0: in std_logic; 
      window_design_adc_user_outofrangeq1: in std_logic; 
      window_design_adc_user_sync0: in std_logic; 
      window_design_adc_user_sync1: in std_logic; 
      window_design_adc_user_sync2: in std_logic; 
      window_design_adc_user_sync3: in std_logic; 
      window_design_lo_0_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_1_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_2_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_3_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_mixer_cnt_user_data_out: in std_logic_vector(31 downto 0); 
      gateway_out: out std_logic_vector(15 downto 0); 
      gateway_out1: out std_logic_vector(15 downto 0); 
      gateway_out1_x0: out std_logic_vector(15 downto 0); 
      gateway_out1_x1: out std_logic_vector(15 downto 0); 
      gateway_out1_x2: out std_logic_vector(15 downto 0); 
      gateway_out_x0: out std_logic_vector(15 downto 0); 
      gateway_out_x1: out std_logic_vector(15 downto 0); 
      gateway_out_x2: out std_logic_vector(15 downto 0); 
      window_design_lo_0_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_0_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_0_shared_bram_we: out std_logic; 
      window_design_lo_1_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_1_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_1_shared_bram_we: out std_logic; 
      window_design_lo_2_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_2_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_2_shared_bram_we: out std_logic; 
      window_design_lo_3_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_3_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_3_shared_bram_we: out std_logic; 
      window_design_pol1_window1_dout_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol1_window1_sync_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol2_window1_dout_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol2_window1_sync_user_data_in: out std_logic_vector(31 downto 0)
    );
end window_design_cw_stub;

architecture Behavioral of window_design_cw_stub is

  component window_design_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 6.25 ns (160.0 Mhz)
      window_design_adc_user_data_valid: in std_logic; 
      window_design_adc_user_datai0: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai1: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai2: in std_logic_vector(7 downto 0); 
      window_design_adc_user_datai3: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq0: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq1: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq2: in std_logic_vector(7 downto 0); 
      window_design_adc_user_dataq3: in std_logic_vector(7 downto 0); 
      window_design_adc_user_outofrangei0: in std_logic; 
      window_design_adc_user_outofrangei1: in std_logic; 
      window_design_adc_user_outofrangeq0: in std_logic; 
      window_design_adc_user_outofrangeq1: in std_logic; 
      window_design_adc_user_sync0: in std_logic; 
      window_design_adc_user_sync1: in std_logic; 
      window_design_adc_user_sync2: in std_logic; 
      window_design_adc_user_sync3: in std_logic; 
      window_design_lo_0_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_1_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_2_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_lo_3_shared_bram_data_out: in std_logic_vector(31 downto 0); 
      window_design_mixer_cnt_user_data_out: in std_logic_vector(31 downto 0); 
      gateway_out: out std_logic_vector(15 downto 0); 
      gateway_out1: out std_logic_vector(15 downto 0); 
      gateway_out1_x0: out std_logic_vector(15 downto 0); 
      gateway_out1_x1: out std_logic_vector(15 downto 0); 
      gateway_out1_x2: out std_logic_vector(15 downto 0); 
      gateway_out_x0: out std_logic_vector(15 downto 0); 
      gateway_out_x1: out std_logic_vector(15 downto 0); 
      gateway_out_x2: out std_logic_vector(15 downto 0); 
      window_design_lo_0_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_0_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_0_shared_bram_we: out std_logic; 
      window_design_lo_1_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_1_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_1_shared_bram_we: out std_logic; 
      window_design_lo_2_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_2_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_2_shared_bram_we: out std_logic; 
      window_design_lo_3_shared_bram_addr: out std_logic_vector(9 downto 0); 
      window_design_lo_3_shared_bram_data_in: out std_logic_vector(31 downto 0); 
      window_design_lo_3_shared_bram_we: out std_logic; 
      window_design_pol1_window1_dout_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol1_window1_sync_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol2_window1_dout_user_data_in: out std_logic_vector(31 downto 0); 
      window_design_pol2_window1_sync_user_data_in: out std_logic_vector(31 downto 0)
    );
  end component;
begin

window_design_cw_i : window_design_cw
  port map (
    ce => ce,
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
    window_design_lo_0_shared_bram_data_out => window_design_lo_0_shared_bram_data_out,
    window_design_lo_1_shared_bram_data_out => window_design_lo_1_shared_bram_data_out,
    window_design_lo_2_shared_bram_data_out => window_design_lo_2_shared_bram_data_out,
    window_design_lo_3_shared_bram_data_out => window_design_lo_3_shared_bram_data_out,
    window_design_mixer_cnt_user_data_out => window_design_mixer_cnt_user_data_out,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out_x0 => gateway_out_x0,
    gateway_out_x1 => gateway_out_x1,
    gateway_out_x2 => gateway_out_x2,
    window_design_lo_0_shared_bram_addr => window_design_lo_0_shared_bram_addr,
    window_design_lo_0_shared_bram_data_in => window_design_lo_0_shared_bram_data_in,
    window_design_lo_0_shared_bram_we => window_design_lo_0_shared_bram_we,
    window_design_lo_1_shared_bram_addr => window_design_lo_1_shared_bram_addr,
    window_design_lo_1_shared_bram_data_in => window_design_lo_1_shared_bram_data_in,
    window_design_lo_1_shared_bram_we => window_design_lo_1_shared_bram_we,
    window_design_lo_2_shared_bram_addr => window_design_lo_2_shared_bram_addr,
    window_design_lo_2_shared_bram_data_in => window_design_lo_2_shared_bram_data_in,
    window_design_lo_2_shared_bram_we => window_design_lo_2_shared_bram_we,
    window_design_lo_3_shared_bram_addr => window_design_lo_3_shared_bram_addr,
    window_design_lo_3_shared_bram_data_in => window_design_lo_3_shared_bram_data_in,
    window_design_lo_3_shared_bram_we => window_design_lo_3_shared_bram_we,
    window_design_pol1_window1_dout_user_data_in => window_design_pol1_window1_dout_user_data_in,
    window_design_pol1_window1_sync_user_data_in => window_design_pol1_window1_sync_user_data_in,
    window_design_pol2_window1_dout_user_data_in => window_design_pol2_window1_dout_user_data_in,
    window_design_pol2_window1_sync_user_data_in => window_design_pol2_window1_sync_user_data_in);
end Behavioral;

