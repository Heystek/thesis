% window_design/xsg_core_config
window_design_xsg_core_config_type         = 'xps_xsg';
window_design_xsg_core_config_param        = '';

% window_design/adc
window_design_adc_type         = 'xps_adc';
window_design_adc_param        = 'adc = adc0 / interleave = off';
window_design_adc_ip_name      = 'adc_interface';

% window_design/lo_0/Shared_BRAM
window_design_lo_0_Shared_BRAM_type         = 'xps_bram';
window_design_lo_0_Shared_BRAM_param        = '1024';
window_design_lo_0_Shared_BRAM_ip_name      = 'bram_if';
window_design_lo_0_Shared_BRAM_addr_start   = hex2dec('01000000');
window_design_lo_0_Shared_BRAM_addr_end     = hex2dec('01000FFF');

% window_design/lo_1/Shared_BRAM
window_design_lo_1_Shared_BRAM_type         = 'xps_bram';
window_design_lo_1_Shared_BRAM_param        = '1024';
window_design_lo_1_Shared_BRAM_ip_name      = 'bram_if';
window_design_lo_1_Shared_BRAM_addr_start   = hex2dec('01001000');
window_design_lo_1_Shared_BRAM_addr_end     = hex2dec('01001FFF');

% window_design/lo_2/Shared_BRAM
window_design_lo_2_Shared_BRAM_type         = 'xps_bram';
window_design_lo_2_Shared_BRAM_param        = '1024';
window_design_lo_2_Shared_BRAM_ip_name      = 'bram_if';
window_design_lo_2_Shared_BRAM_addr_start   = hex2dec('01002000');
window_design_lo_2_Shared_BRAM_addr_end     = hex2dec('01002FFF');

% window_design/lo_3/Shared_BRAM
window_design_lo_3_Shared_BRAM_type         = 'xps_bram';
window_design_lo_3_Shared_BRAM_param        = '1024';
window_design_lo_3_Shared_BRAM_ip_name      = 'bram_if';
window_design_lo_3_Shared_BRAM_addr_start   = hex2dec('01003000');
window_design_lo_3_Shared_BRAM_addr_end     = hex2dec('01003FFF');

% window_design/mixer_cnt
window_design_mixer_cnt_type         = 'xps_sw_reg';
window_design_mixer_cnt_param        = 'in';
window_design_mixer_cnt_ip_name      = 'opb_register_ppc2simulink';
window_design_mixer_cnt_addr_start   = hex2dec('01004000');
window_design_mixer_cnt_addr_end     = hex2dec('010040FF');

% window_design/pol1_window1_dout
window_design_pol1_window1_dout_type         = 'xps_sw_reg';
window_design_pol1_window1_dout_param        = 'out';
window_design_pol1_window1_dout_ip_name      = 'opb_register_simulink2ppc';
window_design_pol1_window1_dout_addr_start   = hex2dec('01004100');
window_design_pol1_window1_dout_addr_end     = hex2dec('010041FF');

% window_design/pol1_window1_sync
window_design_pol1_window1_sync_type         = 'xps_sw_reg';
window_design_pol1_window1_sync_param        = 'out';
window_design_pol1_window1_sync_ip_name      = 'opb_register_simulink2ppc';
window_design_pol1_window1_sync_addr_start   = hex2dec('01004200');
window_design_pol1_window1_sync_addr_end     = hex2dec('010042FF');

% window_design/pol2_window1_dout
window_design_pol2_window1_dout_type         = 'xps_sw_reg';
window_design_pol2_window1_dout_param        = 'out';
window_design_pol2_window1_dout_ip_name      = 'opb_register_simulink2ppc';
window_design_pol2_window1_dout_addr_start   = hex2dec('01004300');
window_design_pol2_window1_dout_addr_end     = hex2dec('010043FF');

% window_design/pol2_window1_sync
window_design_pol2_window1_sync_type         = 'xps_sw_reg';
window_design_pol2_window1_sync_param        = 'out';
window_design_pol2_window1_sync_ip_name      = 'opb_register_simulink2ppc';
window_design_pol2_window1_sync_addr_start   = hex2dec('01004400');
window_design_pol2_window1_sync_addr_end     = hex2dec('010044FF');

