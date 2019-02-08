-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    aux_clk_n : in std_logic;
    aux_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(0 to 31);
    epb_addr : in std_logic_vector(5 to 29);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(0 to 3);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_doe_n : out std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    adc0_adc3wire_clk : out std_logic;
    adc0_adc3wire_data : out std_logic;
    adc0_adc3wire_strobe : out std_logic;
    adc0_modepin : out std_logic;
    adc0clk_p : in std_logic;
    adc0clk_n : in std_logic;
    adc0sync_p : in std_logic;
    adc0sync_n : in std_logic;
    adc0outofrangei_p : in std_logic;
    adc0outofrangei_n : in std_logic;
    adc0outofrangeq_p : in std_logic;
    adc0outofrangeq_n : in std_logic;
    adc0dataeveni_p : in std_logic_vector(7 downto 0);
    adc0dataeveni_n : in std_logic_vector(7 downto 0);
    adc0dataoddi_p : in std_logic_vector(7 downto 0);
    adc0dataoddi_n : in std_logic_vector(7 downto 0);
    adc0dataevenq_p : in std_logic_vector(7 downto 0);
    adc0dataevenq_n : in std_logic_vector(7 downto 0);
    adc0dataoddq_p : in std_logic_vector(7 downto 0);
    adc0dataoddq_n : in std_logic_vector(7 downto 0);
    adc0ddrb_p : out std_logic;
    adc0ddrb_n : out std_logic
  );
end system;

architecture STRUCTURE of system is

  component system_opb_adccontroller_0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      adc0_adc3wire_clk : out std_logic;
      adc0_adc3wire_data : out std_logic;
      adc0_adc3wire_strobe : out std_logic;
      adc0_modepin : out std_logic;
      adc0_ddrb : out std_logic;
      adc0_mmcm_reset : out std_logic;
      adc0_psclk : out std_logic;
      adc0_psen : out std_logic;
      adc0_psincdec : out std_logic;
      adc0_psdone : in std_logic;
      adc0_clk : in std_logic;
      adc1_adc3wire_clk : out std_logic;
      adc1_adc3wire_data : out std_logic;
      adc1_adc3wire_strobe : out std_logic;
      adc1_modepin : out std_logic;
      adc1_ddrb : out std_logic;
      adc1_mmcm_reset : out std_logic;
      adc1_psclk : out std_logic;
      adc1_psen : out std_logic;
      adc1_psincdec : out std_logic;
      adc1_psdone : in std_logic;
      adc1_clk : in std_logic
    );
  end component;

  component system_infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      aux_clk_n : in std_logic;
      aux_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      aux_clk : out std_logic;
      aux_clk90 : out std_logic;
      aux_clk180 : out std_logic;
      aux_clk270 : out std_logic;
      aux_clk2x : out std_logic;
      aux_clk2x90 : out std_logic;
      aux_clk2x180 : out std_logic;
      aux_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic;
      op_power_on_rst : out std_logic;
      clk_200 : out std_logic;
      clk_100 : out std_logic
    );
  end component;

  component system_reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      ip_async_reset_i : in std_logic;
      ip_reset_i : in std_logic;
      op_reset_o : out std_logic
    );
  end component;

  component system_opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 10);
      Sl_DBus : in std_logic_vector(0 to 351);
      Sl_DBusEn : in std_logic_vector(0 to 10);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 10);
      Sl_errAck : in std_logic_vector(0 to 10);
      Sl_dwAck : in std_logic_vector(0 to 10);
      Sl_fwAck : in std_logic_vector(0 to 10);
      Sl_hwAck : in std_logic_vector(0 to 10);
      Sl_retry : in std_logic_vector(0 to 10);
      Sl_toutSup : in std_logic_vector(0 to 10);
      Sl_xferAck : in std_logic_vector(0 to 10);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component system_epb_opb_bridge_inst_wrapper is
    port (
      epb_clk : in std_logic;
      epb_doe_n : out std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(3 downto 0);
      epb_addr : in std_logic_vector(5 to 29);
      epb_data_i : in std_logic_vector(0 to 31);
      epb_data_o : out std_logic_vector(0 to 31);
      epb_rdy : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component system_epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(31 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(31 downto 0);
      epb_data_in_o : out std_logic_vector(31 downto 0)
    );
  end component;

  component system_sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component system_window_design_xsg_core_config_wrapper is
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

  component system_window_design_adc_wrapper is
    port (
      adc_clk_p : in std_logic;
      adc_clk_n : in std_logic;
      adc_sync_p : in std_logic;
      adc_sync_n : in std_logic;
      adc_outofrangei_p : in std_logic;
      adc_outofrangei_n : in std_logic;
      adc_outofrangeq_p : in std_logic;
      adc_outofrangeq_n : in std_logic;
      adc_dataeveni_p : in std_logic_vector(7 downto 0);
      adc_dataeveni_n : in std_logic_vector(7 downto 0);
      adc_dataoddi_p : in std_logic_vector(7 downto 0);
      adc_dataoddi_n : in std_logic_vector(7 downto 0);
      adc_dataevenq_p : in std_logic_vector(7 downto 0);
      adc_dataevenq_n : in std_logic_vector(7 downto 0);
      adc_dataoddq_p : in std_logic_vector(7 downto 0);
      adc_dataoddq_n : in std_logic_vector(7 downto 0);
      adc_ddrb_p : out std_logic;
      adc_ddrb_n : out std_logic;
      user_datai0 : out std_logic_vector(7 downto 0);
      user_datai1 : out std_logic_vector(7 downto 0);
      user_datai2 : out std_logic_vector(7 downto 0);
      user_datai3 : out std_logic_vector(7 downto 0);
      user_dataq0 : out std_logic_vector(7 downto 0);
      user_dataq1 : out std_logic_vector(7 downto 0);
      user_dataq2 : out std_logic_vector(7 downto 0);
      user_dataq3 : out std_logic_vector(7 downto 0);
      user_outofrangei0 : out std_logic;
      user_outofrangei1 : out std_logic;
      user_outofrangeq0 : out std_logic;
      user_outofrangeq1 : out std_logic;
      user_sync0 : out std_logic;
      user_sync1 : out std_logic;
      user_sync2 : out std_logic;
      user_sync3 : out std_logic;
      user_data_valid : out std_logic;
      mmcm_reset : in std_logic;
      ctrl_reset : in std_logic;
      ctrl_clk_in : in std_logic;
      ctrl_clk_out : out std_logic;
      ctrl_clk90_out : out std_logic;
      ctrl_clk180_out : out std_logic;
      ctrl_clk270_out : out std_logic;
      ctrl_dcm_locked : out std_logic;
      dcm_psclk : in std_logic;
      dcm_psen : in std_logic;
      dcm_psincdec : in std_logic;
      mmcm_psdone : out std_logic
    );
  end component;

  component system_window_design_lo_0_shared_bram_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component system_window_design_lo_0_shared_bram_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_0_shared_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_1_shared_bram_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component system_window_design_lo_1_shared_bram_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_1_shared_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_2_shared_bram_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component system_window_design_lo_2_shared_bram_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_2_shared_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_3_shared_bram_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component system_window_design_lo_3_shared_bram_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_lo_3_shared_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_window_design_mixer_cnt_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_window_design_pol1_window1_dout_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_window_design_pol1_window1_sync_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_window_design_pol2_window1_dout_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_window_design_pol2_window1_sync_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  -- Internal signals

  signal adc0_clk : std_logic;
  signal adc0_ddrb : std_logic;
  signal adc0_mmcm_reset : std_logic;
  signal adc0_psclk : std_logic;
  signal adc0_psdone : std_logic;
  signal adc0_psen : std_logic;
  signal adc0_psincdec : std_logic;
  signal epb_clk : std_logic;
  signal epb_data_i : std_logic_vector(0 to 31);
  signal epb_data_o : std_logic_vector(31 downto 0);
  signal epb_data_oe_n : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd11 : std_logic_vector(0 to 10);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc11 : std_logic_vector(0 to 10);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 351);
  signal opb0_Sl_errAck : std_logic_vector(0 to 10);
  signal opb0_Sl_retry : std_logic_vector(0 to 10);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 10);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 10);
  signal pgassign1 : std_logic_vector(15 downto 0);
  signal power_on_rst : std_logic;
  signal sys_clk : std_logic;
  signal window_design_adc_user_data_valid : std_logic;
  signal window_design_adc_user_datai0 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai1 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai2 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai3 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq0 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq1 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq2 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq3 : std_logic_vector(7 downto 0);
  signal window_design_adc_user_outofrangei0 : std_logic;
  signal window_design_adc_user_outofrangei1 : std_logic;
  signal window_design_adc_user_outofrangeq0 : std_logic;
  signal window_design_adc_user_outofrangeq1 : std_logic;
  signal window_design_adc_user_sync0 : std_logic;
  signal window_design_adc_user_sync1 : std_logic;
  signal window_design_adc_user_sync2 : std_logic;
  signal window_design_adc_user_sync3 : std_logic;
  signal window_design_lo_0_Shared_BRAM_addr : std_logic_vector(9 downto 0);
  signal window_design_lo_0_Shared_BRAM_data_in : std_logic_vector(31 downto 0);
  signal window_design_lo_0_Shared_BRAM_data_out : std_logic_vector(31 downto 0);
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Clk : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_EN : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Rst : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Clk : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_EN : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Rst : std_logic;
  signal window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_0_Shared_BRAM_we : std_logic;
  signal window_design_lo_1_Shared_BRAM_addr : std_logic_vector(9 downto 0);
  signal window_design_lo_1_Shared_BRAM_data_in : std_logic_vector(31 downto 0);
  signal window_design_lo_1_Shared_BRAM_data_out : std_logic_vector(31 downto 0);
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Clk : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_EN : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Rst : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Clk : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_EN : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Rst : std_logic;
  signal window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_1_Shared_BRAM_we : std_logic;
  signal window_design_lo_2_Shared_BRAM_addr : std_logic_vector(9 downto 0);
  signal window_design_lo_2_Shared_BRAM_data_in : std_logic_vector(31 downto 0);
  signal window_design_lo_2_Shared_BRAM_data_out : std_logic_vector(31 downto 0);
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Clk : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_EN : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Rst : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Clk : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_EN : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Rst : std_logic;
  signal window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_2_Shared_BRAM_we : std_logic;
  signal window_design_lo_3_Shared_BRAM_addr : std_logic_vector(9 downto 0);
  signal window_design_lo_3_Shared_BRAM_data_in : std_logic_vector(31 downto 0);
  signal window_design_lo_3_Shared_BRAM_data_out : std_logic_vector(31 downto 0);
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Clk : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_EN : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Rst : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Clk : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_EN : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Rst : std_logic;
  signal window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal window_design_lo_3_Shared_BRAM_we : std_logic;
  signal window_design_mixer_cnt_user_data_out : std_logic_vector(31 downto 0);
  signal window_design_pol1_window1_dout_user_data_in : std_logic_vector(31 downto 0);
  signal window_design_pol1_window1_sync_user_data_in : std_logic_vector(31 downto 0);
  signal window_design_pol2_window1_dout_user_data_in : std_logic_vector(31 downto 0);
  signal window_design_pol2_window1_sync_user_data_in : std_logic_vector(31 downto 0);

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system_opb_adccontroller_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_adc_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_0_shared_bram_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_0_shared_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_0_shared_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_1_shared_bram_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_1_shared_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_1_shared_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_2_shared_bram_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_2_shared_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_2_shared_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_3_shared_bram_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_3_shared_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_lo_3_shared_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_mixer_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_pol1_window1_dout_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_pol1_window1_sync_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_pol2_window1_dout_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_window_design_pol2_window1_sync_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  pgassign1(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd11(0 to 10) <= B"00000000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc11(0 to 10) <= B"11111111111";

  opb_adccontroller_0 : system_opb_adccontroller_0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      adc0_adc3wire_clk => adc0_adc3wire_clk,
      adc0_adc3wire_data => adc0_adc3wire_data,
      adc0_adc3wire_strobe => adc0_adc3wire_strobe,
      adc0_modepin => adc0_modepin,
      adc0_ddrb => adc0_ddrb,
      adc0_mmcm_reset => adc0_mmcm_reset,
      adc0_psclk => adc0_psclk,
      adc0_psen => adc0_psen,
      adc0_psincdec => adc0_psincdec,
      adc0_psdone => adc0_psdone,
      adc0_clk => adc0_clk,
      adc1_adc3wire_clk => open,
      adc1_adc3wire_data => open,
      adc1_adc3wire_strobe => open,
      adc1_modepin => open,
      adc1_ddrb => open,
      adc1_mmcm_reset => open,
      adc1_psclk => open,
      adc1_psen => open,
      adc1_psincdec => open,
      adc1_psdone => net_gnd0,
      adc1_clk => net_gnd0
    );

  infrastructure_inst : system_infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      aux_clk_n => aux_clk_n,
      aux_clk_p => aux_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => sys_clk,
      sys_clk90 => open,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => open,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      aux_clk => open,
      aux_clk90 => open,
      aux_clk180 => open,
      aux_clk270 => open,
      aux_clk2x => open,
      aux_clk2x90 => open,
      aux_clk2x180 => open,
      aux_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => power_on_rst,
      idelay_rdy => open,
      op_power_on_rst => power_on_rst,
      clk_200 => open,
      clk_100 => open
    );

  reset_block_inst : system_reset_block_inst_wrapper
    port map (
      clk => sys_clk,
      ip_async_reset_i => power_on_rst,
      ip_reset_i => power_on_rst,
      op_reset_o => open
    );

  opb0 : system_opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => power_on_rst,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd11,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc11,
      Sl_DBusEn32_63 => net_vcc11,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd11,
      Sl_fwAck => net_gnd11,
      Sl_hwAck => net_gnd11,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : system_epb_opb_bridge_inst_wrapper
    port map (
      epb_clk => epb_clk,
      epb_doe_n => epb_doe_n,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n,
      epb_oe_n => epb_oe_n,
      epb_r_w_n => epb_r_w_n,
      epb_be_n => epb_be_n(0 to 3),
      epb_addr => epb_addr,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o(31 downto 0),
      epb_rdy => epb_rdy,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : system_epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data(0 to 31),
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i(0 to 31)
    );

  sys_block_inst : system_sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign1,
      fab_clk => sys_clk
    );

  window_design_xsg_core_config : system_window_design_xsg_core_config_wrapper
    port map (
      clk => sys_clk,
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

  window_design_adc : system_window_design_adc_wrapper
    port map (
      adc_clk_p => adc0clk_p,
      adc_clk_n => adc0clk_n,
      adc_sync_p => adc0sync_p,
      adc_sync_n => adc0sync_n,
      adc_outofrangei_p => adc0outofrangei_p,
      adc_outofrangei_n => adc0outofrangei_n,
      adc_outofrangeq_p => adc0outofrangeq_p,
      adc_outofrangeq_n => adc0outofrangeq_n,
      adc_dataeveni_p => adc0dataeveni_p,
      adc_dataeveni_n => adc0dataeveni_n,
      adc_dataoddi_p => adc0dataoddi_p,
      adc_dataoddi_n => adc0dataoddi_n,
      adc_dataevenq_p => adc0dataevenq_p,
      adc_dataevenq_n => adc0dataevenq_n,
      adc_dataoddq_p => adc0dataoddq_p,
      adc_dataoddq_n => adc0dataoddq_n,
      adc_ddrb_p => adc0ddrb_p,
      adc_ddrb_n => adc0ddrb_n,
      user_datai0 => window_design_adc_user_datai0,
      user_datai1 => window_design_adc_user_datai1,
      user_datai2 => window_design_adc_user_datai2,
      user_datai3 => window_design_adc_user_datai3,
      user_dataq0 => window_design_adc_user_dataq0,
      user_dataq1 => window_design_adc_user_dataq1,
      user_dataq2 => window_design_adc_user_dataq2,
      user_dataq3 => window_design_adc_user_dataq3,
      user_outofrangei0 => window_design_adc_user_outofrangei0,
      user_outofrangei1 => window_design_adc_user_outofrangei1,
      user_outofrangeq0 => window_design_adc_user_outofrangeq0,
      user_outofrangeq1 => window_design_adc_user_outofrangeq1,
      user_sync0 => window_design_adc_user_sync0,
      user_sync1 => window_design_adc_user_sync1,
      user_sync2 => window_design_adc_user_sync2,
      user_sync3 => window_design_adc_user_sync3,
      user_data_valid => window_design_adc_user_data_valid,
      mmcm_reset => adc0_mmcm_reset,
      ctrl_reset => adc0_ddrb,
      ctrl_clk_in => sys_clk,
      ctrl_clk_out => adc0_clk,
      ctrl_clk90_out => open,
      ctrl_clk180_out => open,
      ctrl_clk270_out => open,
      ctrl_dcm_locked => open,
      dcm_psclk => adc0_psclk,
      dcm_psen => adc0_psen,
      dcm_psincdec => adc0_psincdec,
      mmcm_psdone => adc0_psdone
    );

  window_design_lo_0_Shared_BRAM_ramif : system_window_design_lo_0_shared_bram_ramif_wrapper
    port map (
      bram_rst => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Rst,
      bram_clk => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Clk,
      bram_en => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_EN,
      bram_wen => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_WEN,
      bram_addr => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Addr,
      bram_din => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Din,
      bram_dout => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Dout,
      clk_in => sys_clk,
      addr => window_design_lo_0_Shared_BRAM_addr,
      data_in => window_design_lo_0_Shared_BRAM_data_in,
      data_out => window_design_lo_0_Shared_BRAM_data_out,
      we => window_design_lo_0_Shared_BRAM_we
    );

  window_design_lo_0_shared_bram_ramblk : system_window_design_lo_0_shared_bram_ramblk_wrapper
    port map (
      BRAM_Rst_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => window_design_lo_0_Shared_BRAM_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_0_Shared_BRAM : system_window_design_lo_0_shared_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(64 to 95),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(2),
      sln_errack => opb0_Sl_errAck(2),
      sln_toutsup => opb0_Sl_toutSup(2),
      sln_retry => opb0_Sl_retry(2),
      bram_rst => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Rst,
      bram_clk => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Clk,
      bram_en => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_EN,
      bram_wen => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_WEN,
      bram_addr => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Addr,
      bram_din => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Din,
      bram_dout => window_design_lo_0_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_1_Shared_BRAM_ramif : system_window_design_lo_1_shared_bram_ramif_wrapper
    port map (
      bram_rst => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Rst,
      bram_clk => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Clk,
      bram_en => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_EN,
      bram_wen => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_WEN,
      bram_addr => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Addr,
      bram_din => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Din,
      bram_dout => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Dout,
      clk_in => sys_clk,
      addr => window_design_lo_1_Shared_BRAM_addr,
      data_in => window_design_lo_1_Shared_BRAM_data_in,
      data_out => window_design_lo_1_Shared_BRAM_data_out,
      we => window_design_lo_1_Shared_BRAM_we
    );

  window_design_lo_1_shared_bram_ramblk : system_window_design_lo_1_shared_bram_ramblk_wrapper
    port map (
      BRAM_Rst_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => window_design_lo_1_Shared_BRAM_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_1_Shared_BRAM : system_window_design_lo_1_shared_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(96 to 127),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(3),
      sln_errack => opb0_Sl_errAck(3),
      sln_toutsup => opb0_Sl_toutSup(3),
      sln_retry => opb0_Sl_retry(3),
      bram_rst => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Rst,
      bram_clk => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Clk,
      bram_en => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_EN,
      bram_wen => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_WEN,
      bram_addr => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Addr,
      bram_din => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Din,
      bram_dout => window_design_lo_1_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_2_Shared_BRAM_ramif : system_window_design_lo_2_shared_bram_ramif_wrapper
    port map (
      bram_rst => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Rst,
      bram_clk => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Clk,
      bram_en => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_EN,
      bram_wen => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_WEN,
      bram_addr => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Addr,
      bram_din => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Din,
      bram_dout => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Dout,
      clk_in => sys_clk,
      addr => window_design_lo_2_Shared_BRAM_addr,
      data_in => window_design_lo_2_Shared_BRAM_data_in,
      data_out => window_design_lo_2_Shared_BRAM_data_out,
      we => window_design_lo_2_Shared_BRAM_we
    );

  window_design_lo_2_shared_bram_ramblk : system_window_design_lo_2_shared_bram_ramblk_wrapper
    port map (
      BRAM_Rst_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => window_design_lo_2_Shared_BRAM_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_2_Shared_BRAM : system_window_design_lo_2_shared_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(128 to 159),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(4),
      sln_errack => opb0_Sl_errAck(4),
      sln_toutsup => opb0_Sl_toutSup(4),
      sln_retry => opb0_Sl_retry(4),
      bram_rst => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Rst,
      bram_clk => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Clk,
      bram_en => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_EN,
      bram_wen => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_WEN,
      bram_addr => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Addr,
      bram_din => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Din,
      bram_dout => window_design_lo_2_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_3_Shared_BRAM_ramif : system_window_design_lo_3_shared_bram_ramif_wrapper
    port map (
      bram_rst => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Rst,
      bram_clk => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Clk,
      bram_en => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_EN,
      bram_wen => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_WEN,
      bram_addr => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Addr,
      bram_din => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Din,
      bram_dout => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Dout,
      clk_in => sys_clk,
      addr => window_design_lo_3_Shared_BRAM_addr,
      data_in => window_design_lo_3_Shared_BRAM_data_in,
      data_out => window_design_lo_3_Shared_BRAM_data_out,
      we => window_design_lo_3_Shared_BRAM_we
    );

  window_design_lo_3_shared_bram_ramblk : system_window_design_lo_3_shared_bram_ramblk_wrapper
    port map (
      BRAM_Rst_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => window_design_lo_3_Shared_BRAM_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_lo_3_Shared_BRAM : system_window_design_lo_3_shared_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(160 to 191),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(5),
      sln_errack => opb0_Sl_errAck(5),
      sln_toutsup => opb0_Sl_toutSup(5),
      sln_retry => opb0_Sl_retry(5),
      bram_rst => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Rst,
      bram_clk => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Clk,
      bram_en => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_EN,
      bram_wen => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_WEN,
      bram_addr => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Addr,
      bram_din => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Din,
      bram_dout => window_design_lo_3_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  window_design_mixer_cnt : system_window_design_mixer_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(192 to 223),
      Sl_errAck => opb0_Sl_errAck(6),
      Sl_retry => opb0_Sl_retry(6),
      Sl_toutSup => opb0_Sl_toutSup(6),
      Sl_xferAck => opb0_Sl_xferAck(6),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => window_design_mixer_cnt_user_data_out,
      user_clk => sys_clk
    );

  window_design_pol1_window1_dout : system_window_design_pol1_window1_dout_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(224 to 255),
      Sl_errAck => opb0_Sl_errAck(7),
      Sl_retry => opb0_Sl_retry(7),
      Sl_toutSup => opb0_Sl_toutSup(7),
      Sl_xferAck => opb0_Sl_xferAck(7),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => window_design_pol1_window1_dout_user_data_in,
      user_clk => sys_clk
    );

  window_design_pol1_window1_sync : system_window_design_pol1_window1_sync_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(256 to 287),
      Sl_errAck => opb0_Sl_errAck(8),
      Sl_retry => opb0_Sl_retry(8),
      Sl_toutSup => opb0_Sl_toutSup(8),
      Sl_xferAck => opb0_Sl_xferAck(8),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => window_design_pol1_window1_sync_user_data_in,
      user_clk => sys_clk
    );

  window_design_pol2_window1_dout : system_window_design_pol2_window1_dout_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(288 to 319),
      Sl_errAck => opb0_Sl_errAck(9),
      Sl_retry => opb0_Sl_retry(9),
      Sl_toutSup => opb0_Sl_toutSup(9),
      Sl_xferAck => opb0_Sl_xferAck(9),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => window_design_pol2_window1_dout_user_data_in,
      user_clk => sys_clk
    );

  window_design_pol2_window1_sync : system_window_design_pol2_window1_sync_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(320 to 351),
      Sl_errAck => opb0_Sl_errAck(10),
      Sl_retry => opb0_Sl_retry(10),
      Sl_toutSup => opb0_Sl_toutSup(10),
      Sl_xferAck => opb0_Sl_xferAck(10),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => window_design_pol2_window1_sync_user_data_in,
      user_clk => sys_clk
    );

end architecture STRUCTURE;

