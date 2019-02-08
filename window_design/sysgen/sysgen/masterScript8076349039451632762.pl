
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/home/heystek/heystek_thesis/thesis',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 6.25,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => 'd7hack',
    'clock_wrapper' => 'Clock Enables',
    'compilation' => 'NGC Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'NGC Netlist',
    'core_generation' => 1.0,
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-heystek/cg_wk/c6a6c87cf59a574a0',
    'coregen_part_family' => 'virtex6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'window_design',
    'design_full_path' => '/home/heystek/heystek_thesis/thesis/window_design.slx',
    'device' => 'xc6vsx475t-1ff1759',
    'device_speed' => '-1',
    'directory' => '/home/heystek/heystek_thesis/thesis/window_design/sysgen',
    'disregard_subsystem_handles' => [
      76639.00036621094,
      76840.00012207031,
      77041.00012207031,
      77242.00012207031,
    ],
    'dsp_cache_root_path' => '/tmp/sysgentmp-heystek',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 0.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 74718.00024414062,
    'generating_subsystem_handle' => 74718.00024414062,
    'generation_directory' => './window_design/sysgen',
    'hdlDir' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/home/heystek/heystek_thesis/thesis',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 74719.00012207031,
    'matlab' => '/opt/Matlab',
    'matlab_fixedpoint' => 0.0,
    'mdlHandle' => 74718.00024414062,
    'mdlPath' => '/home/heystek/heystek_thesis/thesis/window_design.mdl',
    'modelDiagnostics' => [
      {
        'count' => 1603.0,
        'isMask' => 0.0,
        'type' => 'window_design Total blocks',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Bias',
      },
      {
        'count' => 18.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 12.0,
        'isMask' => 0.0,
        'type' => 'Delay',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 37.0,
        'isMask' => 0.0,
        'type' => 'From',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Gain',
      },
      {
        'count' => 38.0,
        'isMask' => 0.0,
        'type' => 'Goto',
      },
      {
        'count' => 345.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Logic',
      },
      {
        'count' => 351.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'RandomNumber',
      },
      {
        'count' => 16.0,
        'isMask' => 0.0,
        'type' => 'RelationalOperator',
      },
      {
        'count' => 609.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Scope',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Sin',
      },
      {
        'count' => 135.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Sum',
      },
      {
        'count' => 23.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Band-Limited White Noise.',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Compare To Constant',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Downsample',
      },
      {
        'count' => 68.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Assert Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Binary Shift Operator Block',
      },
      {
        'count' => 42.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 18.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 72.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 79.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Disregard Subsystem For Generation Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx FIR Compiler 5.0 Block',
      },
      {
        'count' => 34.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 28.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 10.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 80.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 64.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 28.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 41.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'adc',
      },
      {
        'count' => 20.0,
        'isMask' => 1.0,
        'type' => 'adder_tree',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'dec_fir',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'edge_detect',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'fir_col',
      },
      {
        'count' => 32.0,
        'isMask' => 1.0,
        'type' => 'fir_tap',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'munge',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'posedge',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'ri_to_c',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'swreg',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'xsg core config',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/heystek/heystek_thesis/thesis/window_design.mdl',
    'myxilinx' => '/opt/Xilinx/14.7/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 0.0,
      'include_clockwrapper' => 1.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1759',
    'part' => 'xc6vsx475t',
    'partFamily' => 'virtex6',
    'port_data_types_enabled' => 1.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '',
    'simulation_island_subsystem_handle' => 74718.00024414062,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 6.25,
    'sysgen' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'base_system_period_hardware' => 6.25,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'ce_clr' => 0.0,
      'clock_loc' => 'd7hack',
      'clock_wrapper' => 'Clock Enables',
      'compilation' => 'NGC Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
        ],
      },
      'core_generation' => 1.0,
      'coregen_part_family' => 'virtex6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './window_design/sysgen',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 74719.00012207031,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 1.0,
      },
      'package' => 'ff1759',
      'part' => 'xc6vsx475t',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'simulation_island_subsystem_handle' => 74718.00024414062,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 6.25,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc6vsx475t-1ff1759',
      'xilinxfamily' => 'virtex6',
    },
    'sysgen_Root' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 6.25,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'tmpDir' => '/home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen',
    'trim_vbits' => 1.0,
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => '/tmp/sysgentmp-heystek',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '344.500000 ns',
    'xilinx' => '/opt/Xilinx/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc6vsx475t-1ff1759',
    'xilinx_family' => 'virtex6',
    'xilinx_package' => 'ff1759',
    'xilinx_part' => 'xc6vsx475t',
    'xilinxdevice' => 'xc6vsx475t-1ff1759',
    'xilinxfamily' => 'virtex6',
    'xilinxpart' => 'xc6vsx475t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '286e11e0b3341e3ba2b8455c43bb3c52',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_83e473517e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c57ea3080e26b91e8e84b240574965e7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: unsigned((1 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0");
  signal op_mem_22_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((1 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e2b989a05e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8bcc339ab1dd4d8c279cce5e794b5e3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4389dc89bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c198ac020f1a64e07fa0f60d59dc73e3',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a14388b2516cfe5081a8b8b3633210a5',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f14baf787d50eebeae937f61b71c1b06',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((41 - 1) downto 0);
  signal b_17_35: signed((41 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((42 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((42 - 1) downto 0);
  signal op_mem_91_20_back: signed((42 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((42 - 1) downto 0);
  signal cast_69_22: signed((42 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((42 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 39, 42, 39);
  cast_69_22 <= s2s_cast(b_17_35, 39, 42, 39);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((41 - 1) downto 0);
    b : in std_logic_vector((41 - 1) downto 0);
    s : out std_logic_vector((42 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_b6a1641fbc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Adder_Subtracter virtex6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 43',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 43',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = DSP48',
    'CSET Latency = 1',
    'CSET Out_Width = 43',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_f454c284b642f5dc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7c3e85c8be505c01a7ea9ce9e4120b54',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(43 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(43 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_f454c284b642f5dc',
      'entityName' => 'xladdsub_window_design',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd1c0bea0c4ed87db96a52203c9d7d1fb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0111111111111111111111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_aeacade12d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6acf797b896dd03f9c71fdc36111ce02',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((25 - 1) downto 0);
  signal b_1_25: signed((16 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((41 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((41 - 1) downto 0);
  signal op_mem_65_20_back: signed((41 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((41 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= \'1\';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    p : out std_logic_vector((41 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_d0831ce8f1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '606c95f187c2005a44a07971e69c4f62',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c5f975f70c725cfd0e46e1fa219047f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_6a1bb6dda6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Adder_Subtracter virtex6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 44',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 44',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = DSP48',
    'CSET Latency = 1',
    'CSET Out_Width = 44',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_eef67c1cc12cdbba',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7efb48b6bdf6d17132be5e2b606f2cfb',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(44 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(44 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_eef67c1cc12cdbba',
      'entityName' => 'xladdsub_window_design',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter virtex6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 45',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 45',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = DSP48',
    'CSET Latency = 1',
    'CSET Out_Width = 45',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_41035397f321bdbe',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4104d8d1d71493fe8d3b7c00f1f7b91a',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(45 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(45 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_41035397f321bdbe',
      'entityName' => 'xladdsub_window_design',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c757019693f8032fa79ae996578cb9a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_e18fb31a3d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e58ef8f167370b083de134f9b5db3fad',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_8e53793314',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '57f1496f368ca03c45ad4e2bae591da4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d51df7ac30',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '067b4f914ceea86c45d9e74890bec2f3',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '48382841d5909ed3540a0d5e6cd5f3ad',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d1068e55d0640dad269b59a165a32c1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: signed((45 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((45 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "000000000000000000000000000000000000000000000");
  signal op_mem_46_20_front_din: signed((45 - 1) downto 0);
  signal op_mem_46_20_back: signed((45 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_36_3_convert: signed((45 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_36_3_convert <= s2s_cast(ip_1_23, 38, 45, 39);
  op_mem_46_20_push_front_pop_back_en <= \'0\';
  op <= signed_to_std_logic_vector(cast_internal_ip_36_3_convert);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((45 - 1) downto 0);
    op : out std_logic_vector((45 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_92df6a3714',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3782c4baf5fe582faa1adf91f221fbf6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0");
  signal op_mem_91_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((3 - 1) downto 0);
  signal cast_71_22: signed((3 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((3 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((1 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 1, 0);
  op_mem_91_20_push_front_pop_back_en <= \'0\';
  cout_mem_92_22_push_front_pop_back_en <= \'0\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_c13097e33e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '561039fba293d903ddf7735dae34407c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((9 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((10 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((9 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_1d98d96b58',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '26c90b101ce1ca8b2f28c242a8215ef7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_963ed6358a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9c494f480ec71e3cbd64d3f63f90efb',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '846191be181a9be2df1ce7f0eb3ab8d9',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5e1d8f4b865568ec61b470c88e02921a',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '04413e94d48bdaf4987c02f89247cf77',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((10 - 1) downto 0);
  signal d1_1_27: std_logic_vector((10 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((10 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4fe5face7f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fd8687f023e15f94417b7428731f3a71',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_9306b5127f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3c852f5c7e6fd98a510c1810400b4fff',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((32 - 1) downto 0);
  signal output_port_5_5_force: signed((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_dc139e7f7a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c2ac2f9bc6e0b6036fb412c6cd1459a9',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2fdd554a8919df4730d2545986736095',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7d1a771d772b913c3d94057a7df217e0',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aed59262fe2fd3ca0edc89fe9e20065b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_95b0f967bc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Multiplier virtex6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = true',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 23',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 5',
    'CSET portatype = Signed',
    'CSET portawidth = 8',
    'CSET portbtype = Signed',
    'CSET portbwidth = 16',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = true',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mult_11_2_91a8474c05889d6d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2d5d6cba36993c31109813160d91f72f',
    'sourceFile' => 'hdl/xlmult.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)',
      'core_instance_text' => '        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b',
      'core_name0' => 'mult_11_2_91a8474c05889d6d',
      'entityName' => 'xlmult_window_design',
      'entity_name.0' => 'xlmult',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b7c7ecd4954e87633b88dfca486b21be',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_151459306d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '22e6c1a7772fc1d8392491d0dd1c05f7',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f854d313e4194a632951c00cb0a55eec',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((8 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000");
  signal op_mem_20_24_front_din: std_logic_vector((8 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((8 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((8 - 1) downto 0);
    q : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_ebec135d8a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '80d3c8fd70636a4ee559d9d02d8b061e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((16 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((16 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_4246ea65a9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5eca2a88692625e27dec9c9c9d07d24c',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ffbf552fd82521aaf9a5ecc3e72e972',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_2b0feb00fb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ab6c17b6fd955c74715cb8968f9a80a2',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cfbd19a3be4e24991c1f835b4e981483',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_c5d4d59b73',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '04c3f4bf57e083c68c7737e8aae907e7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((16 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((16 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_9bb25f1d93',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5396afe13e2fd51b8f1af1ac3ceb6791',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8e8c4563f4064ff360470537eb85763b',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlpassthrough.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f013ab77c4e010db58e314e4e22146f3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((16 - 1) downto 0);
  signal output_port_5_5_force: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_7025463ea8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c31451775cebc20de01016c51ce52dd',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_21355083c1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd7ab7d0c30598e2fa24803adbe0bcb26',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '717063fcc379ffe88becb4f48e8d364e',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlpassthrough.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c2f27202fd0bc0acfe9ca12b894e5dd',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: boolean;
  signal output_port_7_5_convert: unsigned((1 - 1) downto 0);
begin
  input_port_1_40 <= ((input_port) = "1");
  output_port_7_5_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(input_port_1_40)), 0, 1, 0);
  output_port <= unsigned_to_std_logic_vector(output_port_7_5_convert);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((1 - 1) downto 0);
    output_port : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_112d91c147',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f0372c20c4b6b49cad5f673d58ac5d53',
    'sourceFile' => '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '90c4aabfe14095dcfb9812719277ad4b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_dfe2dded7f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'df8df4d1bf74bb8548239b25fe330204',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (6 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(5);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 5 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_aab7b18c27',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '498a92ac12f8310db54bf44f4f2bb47e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((11 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((11 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000",
    "00000000000");
  signal op_mem_20_24_front_din: std_logic_vector((11 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((11 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((11 - 1) downto 0);
    q : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_f2e1b0f073',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de4543ef2796aec3076335969ebf2eb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_a6d07705dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '191dd8739f634f5c4a6073069f1e2bac',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_12_12: unsigned((32 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_12_12 <= u2u_cast(a_1_31, 0, 32, 0);
  result_12_3_rel <= cast_12_12 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8e44c96cea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_194d0b827fc4f25b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '33b791b5d432f9e406bb1745aad61d13',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_194d0b827fc4f25b',
      'entityName' => 'xlcounter_free_window_design',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT FIR_Compiler virtex6 Xilinx,_Inc. 5.0',
    '# 14.7_P.79',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET allow_rounding_approximation = false',
    'CSET bestprecision = true',
    'CSET chan_in_adv = 0',
    'CSET clock_frequency = 300',
    'CSET coefficient_buffer_type = Automatic',
    'CSET coefficient_file = no_coe_file_loaded',
    'CSET coefficient_fractional_bits = 23',
    'CSET coefficient_reload = false',
    'CSET coefficient_sets = 1',
    'CSET coefficient_sign = Signed',
    'CSET coefficient_structure = Inferred',
    'CSET coefficient_width = 16',
    'CSET coefficientsource = Vector',
    'CSET coefficientvector = 5.05675289407e-05,1.14140423572e-06,1.15407248605e-06,1.16669048236e-06,1.17925554063e-06,1.19176495842e-06,1.20421601542e-06,1.21660597349e-06,1.22893207713e-06,1.24119155351e-06,1.25338161315e-06,1.26549944991e-06,1.27754224135e-06,1.28950714922e-06,1.30139131956e-06,1.31319188315e-06,1.3249059558e-06,1.33653063868e-06,1.34806301863e-06,1.35950016858e-06,1.37083914792e-06,1.38207700254e-06,1.39321076569e-06,1.40423745793e-06,1.41515408768e-06,1.42595765156e-06,1.43664513473e-06,1.44721351134e-06,1.4576597448e-06,1.46798078836e-06,1.47817358519e-06,1.4882350692e-06,1.49816216497e-06,1.50795178861e-06,1.51760084781e-06,1.52710624245e-06,1.53646486502e-06,1.54567360088e-06,1.55472932889e-06,1.56362892179e-06,1.57236924643e-06,1.58094716458e-06,1.58935953308e-06,1.59760320432e-06,1.60567502691e-06,1.61357184584e-06,1.62129050314e-06,1.62882783835e-06,1.63618068877e-06,1.64334589024e-06,1.65032027737e-06,1.65710068419e-06,1.66368394445e-06,1.67006689231e-06,1.6762463627e-06,1.68221919178e-06,1.68798221766e-06,1.69353228055e-06,1.69886622366e-06,1.70398089332e-06,1.70887313982e-06,1.71353981766e-06,1.71797778632e-06,1.72218391054e-06,1.72615506099e-06,1.72988811473e-06,1.73337995586e-06,1.73662747583e-06,1.73962757422e-06,1.74237715902e-06,1.74487314748e-06,1.74711246632e-06,1.74909205259e-06,1.75080885393e-06,1.75225982936e-06,1.75344194962e-06,1.754352198e-06,1.75498757051e-06,1.75534507686e-06,1.75542174071e-06,1.75521460037e-06,1.75472070933e-06,1.75393713684e-06,1.75286096852e-06,1.75148930677e-06,1.7498192716e-06,1.74784800097e-06,1.7455726514e-06,1.7429903988e-06,1.74009843861e-06,1.73689398681e-06,1.7333742802e-06,1.72953657713e-06,1.72537815804e-06,1.720896326e-06,1.71608840748e-06,1.71095175258e-06,1.70548373604e-06,1.69968175748e-06,1.6935432422e-06,1.68706564161e-06,1.68024643401e-06,1.673083125e-06,1.66557324811e-06,1.65771436549e-06,1.64950406836e-06,1.64093997768e-06,1.63201974473e-06,1.62274105165e-06,1.61310161216e-06,1.60309917191e-06,1.59273150932e-06,1.58199643597e-06,1.57089179739e-06,1.55941547339e-06,1.54756537887e-06,1.53533946419e-06,1.52273571611e-06,1.50975215784e-06,1.49638685013e-06,1.48263789152e-06,1.46850341911e-06,1.45398160896e-06,1.4390706768e-06,1.42376887857e-06,1.40807451098e-06,1.39198591204e-06,1.37550146165e-06,1.35861958231e-06,1.34133873934e-06,1.3236574418e-06,1.30557424288e-06,1.28708774041e-06,1.26819657745e-06,1.24889944299e-06,1.2291950723e-06,1.20908224748e-06,1.18855979813e-06,1.16762660183e-06,1.14628158464e-06,1.1245237217e-06,1.10235203756e-06,1.07976560714e-06,1.05676355573e-06,1.03334505982e-06,1.00950934759e-06,9.85255699392e-07,9.60583448067e-07,9.35491979878e-07,9.09980734469e-07,8.8404920593e-07,8.57696942713e-07,8.30923548599e-07,8.0372868293e-07,7.76112061026e-07,7.48073454962e-07,7.19612693596e-07,6.90729663513e-07,6.61424309038e-07,6.3169663299e-07,6.01546697033e-07,5.70974622047e-07,5.39980588658e-07,5.08564837664e-07,4.76727670398e-07,4.44469449125e-07,4.1179059763e-07,3.78691601418e-07,3.45173008194e-07,3.11235428367e-07,2.76879535109e-07,2.42106065288e-07,2.06915819216e-07,1.71309661517e-07,1.35288521163e-07,9.88533921263e-08,6.20053333229e-08,2.47454694749e-08,-1.29250090502e-08,-5.10048455976e-08,-8.94927169901e-08,-1.28387233288e-07,-1.67686937341e-07,-2.07390304595e-07,-2.47495742801e-07,-2.88001591622e-07,-3.28906122513e-07,-3.70207538344e-07,-4.11903973119e-07,-4.53993491829e-07,-4.96474090158e-07,-5.39343694164e-07,-5.82600160141e-07,-6.26241274448e-07,-6.7026475314e-07,-7.14668241861e-07,-7.59449315724e-07,-8.0460547888e-07,-8.50134164695e-07,-8.96032735172e-07,-9.42298481145e-07,-9.88928621941e-07,-1.03592030526e-06,-1.0832706071e-06,-1.13097653151e-06,-1.17903501065e-06,-1.22744290453e-06,-1.27619700102e-06,-1.32529401567e-06,-1.37473059168e-06,-1.42450329983e-06,-1.47460863854e-06,-1.52504303344e-06,-1.57580283791e-06,-1.62688433242e-06,-1.6782837251e-06,-1.72999715124e-06,-1.78202067366e-06,-1.83435028244e-06,-1.88698189516e-06,-1.93991135678e-06,-1.99313443981e-06,-2.04664684413e-06,-2.10044419744e-06,-2.15452205486e-06,-2.2088758995e-06,-2.2635011421e-06,-2.31839312147e-06,-2.37354710443e-06,-2.42895828599e-06,-2.48462178951e-06,-2.54053266677e-06,-2.59668589824e-06,-2.65307639308e-06,-2.70969898955e-06,-2.76654845501e-06,-2.82361948615e-06,-2.88090670932e-06,-2.93840468063e-06,-2.99610788624e-06,-3.05401074261e-06,-3.11210759665e-06,-3.17039272625e-06,-3.22886034028e-06,-3.28750457894e-06,-3.34631951428e-06,-3.40529915024e-06,-3.46443742306e-06,-3.52372820176e-06,-3.58316528822e-06,-3.64274241784e-06,-3.7024532597e-06,-3.76229141693e-06,-3.82225042731e-06,-3.88232376347e-06,-3.9425048334e-06,-4.00278698091e-06,-4.06316348587e-06,-4.12362756503e-06,-4.18417237209e-06,-4.24479099848e-06,-4.30547647364e-06,-4.3662217656e-06,-4.42701978162e-06,-4.48786336838e-06,-4.54874531286e-06,-4.60965834268e-06,-4.67059512682e-06,-4.73154827591e-06,-4.79251034313e-06,-4.8534738246e-06,-4.91443116009e-06,-4.9753747335e-06,-5.03629687368e-06,-5.09718985483e-06,-5.15804589743e-06,-5.21885716863e-06,-5.27961578311e-06,-5.34031380364e-06,-5.40094324192e-06,-5.46149605911e-06,-5.52196416665e-06,-5.58233942705e-06,-5.64261365448e-06,-5.70277861561e-06,-5.76282603036e-06,-5.82274757273e-06,-5.88253487147e-06,-5.94217951096e-06,-6.00167303197e-06,-6.06100693254e-06,-6.12017266881e-06,-6.17916165572e-06,-6.237965268e-06,-6.29657484113e-06,-6.35498167184e-06,-6.4131770195e-06,-6.47115210651e-06,-6.52889811965e-06,-6.58640621067e-06,-6.64366749737e-06,-6.70067306447e-06,-6.7574139647e-06,-6.81388121954e-06,-6.87006582036e-06,-6.92595872933e-06,-6.98155088038e-06,-7.03683318024e-06,-7.09179650951e-06,-7.1464317235e-06,-7.20072965352e-06,-7.25468110755e-06,-7.30827687175e-06,-7.36150771104e-06,-7.41436437056e-06,-7.46683757647e-06,-7.51891803727e-06,-7.57059644463e-06,-7.62186347472e-06,-7.67270978922e-06,-7.72312603648e-06,-7.77310285256e-06,-7.82263086248e-06,-7.87170068133e-06,-7.92030291541e-06,-7.96842816339e-06,-8.0160670175e-06,-8.06321006471e-06,-8.10984788795e-06,-8.15597106721e-06,-8.20157018083e-06,-8.2466358067e-06,-8.29115852348e-06,-8.33512891178e-06,-8.37853755541e-06,-8.42137504281e-06,-8.46363196783e-06,-8.5052989316e-06,-8.54636654329e-06,-8.58682542164e-06,-8.62666619618e-06,-8.6658795084e-06,-8.70445601329e-06,-8.74238638043e-06,-8.77966129526e-06,-8.81627146061e-06,-8.85220759773e-06,-8.88746044799e-06,-8.92202077368e-06,-8.95587935988e-06,-8.98902701538e-06,-9.02145457434e-06,-9.0531528973e-06,-9.0841128729e-06,-9.11432541888e-06,-9.14378148376e-06,-9.17247204796e-06,-9.20038812525e-06,-9.22752076417e-06,-9.25386104935e-06,-9.27940010293e-06,-9.30412908587e-06,-9.32803919941e-06,-9.35112168641e-06,-9.37336783282e-06,-9.39476896897e-06,-9.415316471e-06,-9.43500176235e-06,-9.45381631502e-06,-9.47175165108e-06,-9.48879934402e-06,-9.50495102024e-06,-9.5201983603e-06,-9.53453310054e-06,-9.54794703428e-06,-9.56043201344e-06,-9.57197994984e-06,-9.58258281651e-06,-9.5922326494e-06,-9.60092154849e-06,-9.60864167946e-06,-9.61538527488e-06,-9.62114463581e-06,-9.62591213308e-06,-9.62968020886e-06,-9.63244137788e-06,-9.63418822904e-06,-9.63491342663e-06,-9.63460971198e-06,-9.63326990458e-06,-9.63088690382e-06,-9.62745369003e-06,-9.62296332623e-06,-9.61740895925e-06,-9.61078382143e-06,-9.60308123164e-06,-9.59429459702e-06,-9.58441741417e-06,-9.57344327067e-06,-9.56136584629e-06,-9.54817891455e-06,-9.53387634401e-06,-9.51845209965e-06,-9.50190024421e-06,-9.48421493965e-06,-9.46539044841e-06,-9.44542113483e-06,-9.42430146642e-06,-9.40202601533e-06,-9.37858945952e-06,-9.35398658429e-06,-9.32821228348e-06,-9.30126156073e-06,-9.27312953101e-06,-9.24381142171e-06,-9.2133025741e-06,-9.18159844445e-06,-9.14869460554e-06,-9.11458674773e-06,-9.07927068044e-06,-9.04274233314e-06,-9.00499775691e-06,-8.96603312544e-06,-8.92584473646e-06,-8.88442901284e-06,-8.84178250384e-06,-8.79790188641e-06,-8.7527839662e-06,-8.70642567906e-06,-8.65882409185e-06,-8.60997640398e-06,-8.55987994829e-06,-8.50853219234e-06,-8.45593073964e-06,-8.40207333047e-06,-8.34695784344e-06,-8.29058229617e-06,-8.23294484679e-06,-8.17404379462e-06,-8.11387758165e-06,-8.05244479326e-06,-7.98974415955e-06,-7.92577455612e-06,-7.86053500541e-06,-7.79402467737e-06,-7.72624289073e-06,-7.65718911385e-06,-7.58686296575e-06,-7.51526421709e-06,-7.44239279102e-06,-7.36824876423e-06,-7.2928323678e-06,-7.21614398816e-06,-7.13818416791e-06,-7.05895360676e-06,-6.97845316238e-06,-6.89668385118e-06,-6.81364684926e-06,-6.72934349316e-06,-6.64377528059e-06,-6.55694387139e-06,-6.46885108808e-06,-6.3794989169e-06,-6.28888950809e-06,-6.19702517731e-06,-6.10390840542e-06,-6.00954184017e-06,-5.91392829594e-06,-5.81707075514e-06,-5.71897236832e-06,-5.61963645509e-06,-5.51906650458e-06,-5.41726617607e-06,-5.31423929948e-06,-5.20998987609e-06,-5.10452207878e-06,-4.99784025288e-06,-4.88994891631e-06,-4.78085276033e-06,-4.67055664983e-06,-4.55906562375e-06,-4.44638489566e-06,-4.33251985395e-06,-4.21747606227e-06,-4.10125925993e-06,-3.98387536219e-06,-3.86533046057e-06,-3.74563082307e-06,-3.62478289464e-06,-3.5027932972e-06,-3.37966882996e-06,-3.25541646975e-06,-3.13004337084e-06,-3.00355686566e-06,-2.87596446435e-06,-2.74727385533e-06,-2.6174929052e-06,-2.48662965877e-06,-2.35469233927e-06,-2.22168934831e-06,-2.08762926575e-06,-1.95252085005e-06,-1.81637303776e-06,-1.67919494393e-06,-1.54099586162e-06,-1.40178526218e-06,-1.26157279473e-06,-1.1203682864e-06,-9.78181741883e-07,-8.35023343312e-07,-6.90903450141e-07,-5.45832598739e-07,-3.99821502279e-07,-2.52881050382e-07,-1.05022308744e-07,4.37434810679e-08,1.93404902071e-07,3.43950362252e-07,4.95368094861e-07,6.47646159089e-07,8.00772440128e-07,9.5473465007e-07,1.10952032818e-06,1.26511684146e-06,1.42151138516e-06,1.57869098349e-06,1.73664249009e-06,1.89535258873e-06,2.0548077939e-06,2.21499445152e-06,2.37589873969e-06,2.53750666938e-06,2.69980408502e-06,2.86277666557e-06,3.02640992509e-06,3.19068921375e-06,3.35559971838e-06,3.52112646372e-06,3.68725431304e-06,3.85396796918e-06,4.0212519755e-06,4.18909071674e-06,4.35746842027e-06,4.52636915681e-06,4.69577684172e-06,4.86567523586e-06,5.03604794693e-06,5.20687843044e-06,5.37814999081e-06,5.54984578272e-06,5.72194881215e-06,5.89444193772e-06,6.06730787179e-06,6.24052918192e-06,6.41408829204e-06,6.58796748375e-06,6.76214889786e-06,6.93661453548e-06,7.11134625965e-06,7.28632579663e-06,7.46153473748e-06,7.63695453929e-06,7.81256652698e-06,7.98835189456e-06,8.16429170685e-06,8.34036690095e-06,8.51655828784e-06,8.69284655403e-06,8.86921226326e-06,9.04563585798e-06,9.22209766117e-06,9.39857787813e-06,9.57505659803e-06,9.75151379575e-06,9.92792933371e-06,1.01042829636e-05,1.02805543284e-05,1.04567229638e-05,1.06327683004e-05,1.0808669666e-05,1.09844062864e-05,1.11599572886e-05,1.13353017018e-05,1.15104184601e-05,1.16852864039e-05,1.18598842825e-05,1.20341907556e-05,1.2208184396e-05,1.2381843691e-05,1.2555147045e-05,1.27280727817e-05,1.29005991459e-05,1.30727043059e-05,1.32443663558e-05,1.34155633173e-05,1.35862731425e-05,1.37564737159e-05,1.39261428566e-05,1.40952583207e-05,1.42637978038e-05,1.4431738943e-05,1.45990593194e-05,1.47657364608e-05,1.49317478436e-05,1.50970708955e-05,1.5261682998e-05,1.54255614887e-05,1.55886836637e-05,1.57510267806e-05,1.59125680602e-05,1.60732846898e-05,1.62331538252e-05,1.63921525939e-05,1.65502580968e-05,1.67074474116e-05,1.68636975949e-05,1.70189856853e-05,1.71732887054e-05,1.73265836652e-05,1.74788475641e-05,1.76300573943e-05,1.77801901428e-05,1.79292227947e-05,1.80771323353e-05,1.82238957538e-05,1.83694900451e-05,1.85138922131e-05,1.86570792733e-05,1.8799028256e-05,1.89397162084e-05,1.90791201982e-05,1.92172173158e-05,1.93539846776e-05,1.94893994287e-05,1.96234387458e-05,1.975607984e-05,1.98872999598e-05,2.0017076394e-05,2.01453864746e-05,2.02722075799e-05,2.0397517137e-05,2.05212926251e-05,2.06435115787e-05,2.07641515898e-05,2.08831903115e-05,2.1000605461e-05,2.11163748222e-05,2.12304762488e-05,2.13428876676e-05,2.14535870813e-05,2.15625525714e-05,2.16697623014e-05,2.17751945199e-05,2.18788275633e-05,2.19806398591e-05,2.2080609929e-05,2.21787163918e-05,2.22749379664e-05,2.23692534749e-05,2.24616418459e-05,2.25520821171e-05,2.26405534388e-05,2.27270350768e-05,2.28115064152e-05,2.28939469599e-05,2.29743363414e-05,2.30526543181e-05,2.31288807789e-05,2.32029957467e-05,2.32749793816e-05,2.33448119833e-05,2.34124739947e-05,2.3477946005e-05,2.35412087523e-05,2.36022431273e-05,2.36610301756e-05,2.37175511013e-05,2.37717872701e-05,2.38237202119e-05,2.3873331624e-05,2.39206033744e-05,2.39655175047e-05,2.40080562327e-05,2.40482019562e-05,2.40859372551e-05,2.41212448954e-05,2.41541078313e-05,2.41845092086e-05,2.42124323679e-05,2.42378608469e-05,2.42607783842e-05,2.42811689215e-05,2.42990166071e-05,2.43143057982e-05,2.43270210649e-05,2.43371471917e-05,2.43446691815e-05,2.43495722582e-05,2.43518418693e-05,2.43514636889e-05,2.43484236208e-05,2.4342707801e-05,2.43343026007e-05,2.43231946291e-05,2.43093707361e-05,2.4292818015e-05,2.42735238058e-05,2.42514756971e-05,2.42266615296e-05,2.41990693982e-05,2.41686876554e-05,2.41355049129e-05,2.40995100457e-05,2.40606921934e-05,2.40190407637e-05,2.39745454344e-05,2.39271961566e-05,2.38769831567e-05,2.38238969394e-05,2.37679282897e-05,2.3709068276e-05,2.36473082524e-05,2.35826398605e-05,2.3515055033e-05,2.34445459951e-05,2.33711052675e-05,2.32947256686e-05,2.32154003164e-05,2.31331226319e-05,2.304788634e-05,2.29596854731e-05,2.28685143721e-05,2.27743676899e-05,2.26772403925e-05,2.25771277617e-05,2.24740253971e-05,2.23679292183e-05,2.22588354669e-05,2.21467407085e-05,2.2031641835e-05,2.19135360662e-05,2.17924209519e-05,2.16682943742e-05,2.15411545487e-05,2.1411000027e-05,2.12778296985e-05,2.11416427915e-05,2.1002438876e-05,2.08602178646e-05,2.0714980015e-05,2.05667259307e-05,2.04154565638e-05,2.02611732154e-05,2.01038775384e-05,1.9943571538e-05,1.9780257574e-05,1.96139383616e-05,1.94446169735e-05,1.92722968408e-05,1.90969817549e-05,1.89186758679e-05,1.87373836951e-05,1.85531101154e-05,1.83658603729e-05,1.81756400778e-05,1.79824552079e-05,1.77863121096e-05,1.75872174988e-05,1.7385178462e-05,1.71802024576e-05,1.69722973164e-05,1.67614712427e-05,1.65477328155e-05,1.63310909886e-05,1.61115550923e-05,1.58891348334e-05,1.56638402963e-05,1.54356819435e-05,1.52046706165e-05,1.4970817536e-05,1.47341343029e-05,1.44946328982e-05,1.42523256843e-05,1.40072254044e-05,1.37593451838e-05,1.35086985298e-05,1.32552993319e-05,1.29991618623e-05,1.2740300776e-05,1.24787311108e-05,1.22144682877e-05,1.19475281108e-05,1.16779267673e-05,1.14056808276e-05,1.11308072451e-05,1.08533233561e-05,1.05732468799e-05,1.0290595918e-05,1.00053889546e-05,9.71764485581e-06,9.4273828693e-06,9.13462262424e-06,8.83938413046e-06,8.54168777837e-06,8.24155433802e-06,7.93900495891e-06,7.63406116908e-06,7.32674487446e-06,7.01707835843e-06,6.70508428061e-06,6.39078567648e-06,6.07420595612e-06,5.75536890365e-06,5.43429867601e-06,5.11101980205e-06,4.7855571815e-06,4.45793608374e-06,4.12818214688e-06,3.79632137625e-06,3.46238014339e-06,3.12638518457e-06,2.78836359967e-06,2.44834285047e-06,2.10635075946e-06,1.76241550822e-06,1.41656563589e-06,1.06883003761e-06,7.19237962734e-07,3.67819013401e-07,1.46031424663e-08,-3.40379347981e-07,-6.9709780874e-07,-1.05552124523e-06,-1.41561831938e-06,-1.77735735184e-06,-2.1407063238e-06,-2.5056328792e-06,-2.87210432689e-06,-3.24008764267e-06,-3.60954947168e-06,-3.9804561307e-06,-4.35277361027e-06,-4.72646757742e-06,-5.10150337773e-06,-5.47784603811e-06,-5.85546026918e-06,-6.23431046789e-06,-6.61436072012e-06,-6.99557480345e-06,-7.37791618979e-06,-7.76134804807e-06,-8.14583324746e-06,-8.53133435958e-06,-8.91781366214e-06,-9.30523314137e-06,-9.69355449522e-06,-1.00827391366e-05,-1.0472748196e-05,-1.08635425254e-05,-1.12550827006e-05,-1.16473290251e-05,-1.20402415333e-05,-1.24337799935e-05,-1.28279039118e-05,-1.32225725351e-05,-1.36177448547e-05,-1.401337961e-05,-1.44094352919e-05,-1.48058701465e-05,-1.52026421785e-05,-1.55997091557e-05,-1.59970286114e-05,-1.63945578496e-05,-1.6792253948e-05,-1.71900737621e-05,-1.7587973929e-05,-1.79859108718e-05,-1.83838408031e-05,-1.87817197293e-05,-1.91795034548e-05,-1.95771475857e-05,-1.99746075346e-05,-2.03718385244e-05,-2.07687955926e-05,-2.11654335958e-05,-2.15617072139e-05,-2.19575709544e-05,-2.23529791572e-05,-2.27478859984e-05,-2.31422454957e-05,-2.3536011512e-05,-2.39291377606e-05,-2.43215778098e-05,-2.47132850872e-05,-2.51042128847e-05,-2.5494314363e-05,-2.58835425567e-05,-2.62718503788e-05,-2.66591906255e-05,-2.70455159813e-05,-2.74307790241e-05,-2.78149322294e-05,-2.8197927976e-05,-2.85797185507e-05,-2.89602561534e-05,-2.9339492902e-05,-2.9717380838e-05,-3.0093871931e-05,-3.04689180844e-05,-3.08424711401e-05,-3.12144828844e-05,-3.15849050525e-05,-3.19536893343e-05,-3.23207873797e-05,-3.26861508036e-05,-3.30497311918e-05,-3.34114801058e-05,-3.37713490886e-05,-3.41292896701e-05,-3.44852533728e-05,-3.48391917167e-05,-3.51910562253e-05,-3.55407984312e-05,-3.58883698814e-05,-3.62337221431e-05,-3.6576806809e-05,-3.69175755037e-05,-3.72559798883e-05,-3.7591971667e-05,-3.79255025923e-05,-3.82565244709e-05,-3.85849891694e-05,-3.89108486201e-05,-3.92340548269e-05,-3.95545598707e-05,-3.98723159155e-05,-4.01872752144e-05,-4.0499390115e-05,-4.08086130657e-05,-4.11148966213e-05,-4.14181934488e-05,-4.17184563338e-05,-4.20156381857e-05,-4.23096920442e-05,-4.26005710851e-05,-4.28882286258e-05,-4.31726181321e-05,-4.34536932233e-05,-4.37314076787e-05,-4.40057154435e-05,-4.42765706345e-05,-4.45439275466e-05,-4.48077406582e-05,-4.50679646377e-05,-4.53245543491e-05,-4.55774648585e-05,-4.58266514396e-05,-4.60720695799e-05,-4.63136749869e-05,-4.65514235939e-05,-4.67852715662e-05,-4.70151753066e-05,-4.72410914623e-05,-4.746297693e-05,-4.76807888627e-05,-4.7894484675e-05,-4.81040220496e-05,-4.8309358943e-05,-4.85104535917e-05,-4.87072645182e-05,-4.88997505366e-05,-4.90878707591e-05,-4.92715846013e-05,-4.94508517892e-05,-4.96256323637e-05,-4.9795886688e-05,-4.99615754523e-05,-5.01226596806e-05,-5.0279100736e-05,-5.04308603269e-05,-5.05779005127e-05,-5.07201837098e-05,-5.08576726972e-05,-5.09903306226e-05,-5.11181210081e-05,-5.12410077556e-05,-5.13589551533e-05,-5.14719278808e-05,-5.15798910151e-05,-5.16828100362e-05,-5.17806508331e-05,-5.18733797088e-05,-5.19609633866e-05,-5.20433690152e-05,-5.21205641746e-05,-5.21925168817e-05,-5.22591955954e-05,-5.23205692226e-05,-5.23766071234e-05,-5.24272791166e-05,-5.24725554851e-05,-5.25124069812e-05,-5.25468048323e-05,-5.25757207458e-05,-5.25991269146e-05,-5.26169960225e-05,-5.26293012488e-05,-5.26360162743e-05,-5.26371152861e-05,-5.26325729825e-05,-5.26223645784e-05,-5.26064658102e-05,-5.25848529408e-05,-5.25575027645e-05,-5.25243926122e-05,-5.24855003559e-05,-5.24408044139e-05,-5.23902837552e-05,-5.23339179047e-05,-5.22716869477e-05,-5.22035715342e-05,-5.21295528844e-05,-5.20496127924e-05,-5.19637336311e-05,-5.1871898357e-05,-5.17740905139e-05,-5.1670294238e-05,-5.15604942616e-05,-5.14446759182e-05,-5.13228251457e-05,-5.11949284916e-05,-5.10609731164e-05,-5.0920946798e-05,-5.07748379358e-05,-5.06226355544e-05,-5.04643293078e-05,-5.02999094829e-05,-5.01293670038e-05,-4.99526934352e-05,-4.9769880986e-05,-4.95809225133e-05,-4.93858115257e-05,-4.9184542187e-05,-4.89771093193e-05,-4.87635084069e-05,-4.85437355992e-05,-4.83177877143e-05,-4.80856622418e-05,-4.78473573464e-05,-4.76028718707e-05,-4.73522053382e-05,-4.70953579567e-05,-4.68323306202e-05,-4.65631249128e-05,-4.62877431109e-05,-4.60061881859e-05,-4.57184638068e-05,-4.54245743431e-05,-4.51245248667e-05,-4.48183211548e-05,-4.45059696921e-05,-4.41874776728e-05,-4.38628530031e-05,-4.35321043033e-05,-4.31952409097e-05,-4.28522728768e-05,-4.25032109788e-05,-4.21480667119e-05,-4.17868522957e-05,-4.14195806752e-05,-4.1046265522e-05,-4.06669212363e-05,-4.02815629478e-05,-3.98902065176e-05,-3.94928685392e-05,-3.90895663399e-05,-3.86803179814e-05,-3.82651422619e-05,-3.7844058716e-05,-3.74170876162e-05,-3.69842499736e-05,-3.65455675388e-05,-3.6101062802e-05,-3.56507589943e-05,-3.51946800877e-05,-3.47328507957e-05,-3.42652965737e-05,-3.37920436189e-05,-3.33131188711e-05,-3.28285500121e-05,-3.2338365466e-05,-3.18425943993e-05,-3.13412667203e-05,-3.08344130794e-05,-3.03220648681e-05,-2.98042542192e-05,-2.92810140056e-05,-2.87523778407e-05,-2.82183800766e-05,-2.7679055804e-05,-2.71344408513e-05,-2.65845717833e-05,-2.60294859007e-05,-2.54692212385e-05,-2.49038165649e-05,-2.43333113802e-05,-2.37577459154e-05,-2.31771611303e-05,-2.25915987126e-05,-2.20011010755e-05,-2.14057113569e-05,-2.08054734166e-05,-2.02004318349e-05,-1.95906319106e-05,-1.89761196587e-05,-1.83569418086e-05,-1.77331458011e-05,-1.71047797869e-05,-1.64718926235e-05,-1.58345338729e-05,-1.51927537988e-05,-1.45466033645e-05,-1.38961342291e-05,-1.32413987453e-05,-1.25824499563e-05,-1.19193415922e-05,-1.12521280679e-05,-1.05808644785e-05,-9.90560659703e-06,-9.22641087045e-06,-8.54333441626e-06,-7.85643501888e-06,-7.16577112588e-06,-6.47140184419e-06,-5.77338693633e-06,-5.07178681622e-06,-4.36666254515e-06,-3.65807582789e-06,-2.94608900791e-06,-2.23076506356e-06,-1.51216760337e-06,-7.90360861506e-07,-6.54096933074e-08,6.62620429566e-07,1.39366342377e-06,2.12765259927e-06,2.8645206642e-06,3.60419973012e-06,4.34662131685e-06,5.09171635783e-06,5.83941520566e-06,6.58964763707e-06,7.34234285878e-06,8.09742951276e-06,8.85483568221e-06,9.61448889705e-06,1.03763161398e-05,1.11402438516e-05,1.19061979381e-05,1.26741037756e-05,1.34438862171e-05,1.42154695986e-05,1.49887777458e-05,1.57637339797e-05,1.65402611239e-05,1.73182815107e-05,1.80977169881e-05,1.88784889261e-05,1.96605182238e-05,2.04437253164e-05,2.12280301821e-05,2.20133523489e-05,2.27996109019e-05,2.35867244909e-05,2.4374611337e-05,2.51631892404e-05,2.59523755879e-05,2.67420873602e-05,2.75322411394e-05,2.83227531171e-05,2.91135391017e-05,2.99045145266e-05,3.06955944577e-05,3.14866936017e-05,3.22777263139e-05,3.30686066065e-05,3.38592481567e-05,3.46495643147e-05,3.54394681125e-05,3.62288722718e-05,3.70176892129e-05,3.78058310628e-05,3.85932096642e-05,3.93797365835e-05,4.01653231205e-05,4.09498803162e-05,4.17333189622e-05,4.25155496094e-05,4.32964825771e-05,4.4076027962e-05,4.4854095647e-05,4.56305953109e-05,4.64054364372e-05,4.71785283232e-05,4.79497800899e-05,4.87191006908e-05,4.94863989219e-05,5.02515834305e-05,5.10145627253e-05,5.17752451857e-05,5.25335390717e-05,5.32893525333e-05,5.40425936203e-05,5.47931702923e-05,5.55409904285e-05,5.62859618372e-05,5.70279922662e-05,5.77669894127e-05,5.85028609331e-05,5.92355144531e-05,5.99648575782e-05,6.06907979033e-05,6.14132430233e-05,6.21321005432e-05,6.28472780881e-05,6.3558683314e-05,6.42662239179e-05,6.49698076481e-05,6.56693423147e-05,6.63647357999e-05,6.70558960689e-05,6.774273118e-05,6.84251492951e-05,6.91030586907e-05,6.9776367768e-05,7.04449850639e-05,7.11088192613e-05,7.17677792004e-05,7.24217738884e-05,7.30707125112e-05,7.37145044435e-05,7.435305926e-05,7.49862867458e-05,7.56140969074e-05,7.62363999835e-05,7.68531064558e-05,7.74641270598e-05,7.80693727959e-05,7.86687549397e-05,7.92621850538e-05,7.98495749977e-05,8.04308369392e-05,8.10058833656e-05,8.15746270938e-05,8.2136981282e-05,8.26928594402e-05,8.32421754412e-05,8.37848435316e-05,8.43207783428e-05,8.48498949014e-05,8.5372108641e-05,8.58873354123e-05,8.63954914944e-05,8.68964936059e-05,8.73902589152e-05,8.78767050521e-05,8.8355750118e-05,8.88273126972e-05,8.92913118678e-05,8.97476672122e-05,9.01962988283e-05,9.06371273399e-05,9.10700739079e-05,9.14950602409e-05,9.1912008606e-05,9.23208418392e-05,9.27214833569e-05,9.31138571655e-05,9.34978878733e-05,9.38735007e-05,9.42406214879e-05,9.45991767127e-05,9.49490934932e-05,9.52902996029e-05,9.56227234795e-05,9.5946294236e-05,9.62609416709e-05,9.65665962786e-05,9.68631892594e-05,9.71506525307e-05,9.74289187362e-05,9.76979212568e-05,9.79575942205e-05,9.82078725127e-05,9.84486917862e-05,9.86799884711e-05,9.89016997849e-05,9.91137637426e-05,9.93161191665e-05,9.95087056958e-05,9.96914637967e-05,9.98643347719e-05,0.00010002726077,0.000100180184797,0.000100323050722,0.000100455803291,0.000100578388133,0.000100690751772,0.000100792841634,0.000100884606058,0.000100965994304,0.000101036956563,0.000101097443965,0.000101147408589,0.000101186803471,0.000101215582614,0.000101233700996,0.000101241114578,0.000101237780314,0.000101223656159,0.000101198701078,0.00010116287505,0.000101116139085,0.000101058455223,0.000100989786549,0.000100910097198,0.000100819352361,0.000100717518297,0.000100604562339,0.0001004804529,0.000100345159485,0.000100198652692,0.000100040904226,9.98718869016e-05,9.96915746525e-05,9.94999425381e-05,9.92969667505e-05,9.90826246214e-05,9.88568946288e-05,9.8619756404e-05,9.8371190738e-05,9.81111795881e-05,9.78397060842e-05,9.75567545352e-05,9.72623104352e-05,9.69563604697e-05,9.66388925212e-05,9.63098956756e-05,9.59693602273e-05,9.56172776856e-05,9.52536407797e-05,9.48784434642e-05,9.44916809247e-05,9.40933495824e-05,9.36834470999e-05,9.32619723856e-05,9.28289255989e-05,9.23843081545e-05,9.19281227275e-05,9.14603732573e-05,9.09810649527e-05,9.04902042952e-05,8.99877990439e-05,8.94738582392e-05,8.89483922063e-05,8.84114125596e-05,8.78629322057e-05,8.73029653472e-05,8.67315274858e-05,8.61486354258e-05,8.55543072771e-05,8.49485624577e-05,8.43314216972e-05,8.37029070389e-05,8.30630418427e-05,8.24118507875e-05,8.17493598731e-05,8.10755964228e-05,8.03905890849e-05,7.96943678352e-05,7.89869639781e-05,7.82684101486e-05,7.75387403133e-05,7.67979897723e-05,7.60461951597e-05,7.52833944452e-05,7.45096269346e-05,7.37249332706e-05,7.29293554334e-05,7.21229367412e-05,7.13057218505e-05,7.04777567561e-05,6.96390887911e-05,6.87897666271e-05,6.79298402735e-05,6.70593610772e-05,6.61783817221e-05,6.52869562281e-05,6.43851399507e-05,6.34729895795e-05,6.25505631371e-05,6.16179199781e-05,6.06751207871e-05,5.97222275774e-05,5.87593036892e-05,5.77864137874e-05,5.68036238601e-05,5.58110012154e-05,5.48086144801e-05,5.37965335961e-05,5.27748298187e-05,5.17435757127e-05,5.07028451505e-05,4.9652713308e-05,4.85932566616e-05,4.75245529851e-05,4.64466813454e-05,4.53597220992e-05,4.42637568892e-05,4.31588686392e-05,4.20451415508e-05,4.09226610984e-05,3.9791514025e-05,3.86517883372e-05,3.75035733004e-05,3.6346959434e-05,3.5182038506e-05,3.40089035276e-05,3.2827648748e-05,3.16383696485e-05,3.0441162937e-05,2.92361265416e-05,2.80233596049e-05,2.68029624776e-05,2.5575036712e-05,2.43396850556e-05,2.30970114441e-05,2.1847120995e-05,2.05901200002e-05,1.93261159187e-05,1.80552173697e-05,1.67775341247e-05,1.54931771003e-05,1.42022583498e-05,1.29048910559e-05,1.16011895223e-05,1.02912691651e-05,8.97524650518e-06,7.653239159e-06,6.32536583029e-06,4.99174630087e-06,3.65250142205e-06,2.30775310496e-06,9.5762431195e-07,-3.97760953605e-07,-1.75827765627e-06,-3.12379973867e-06,-4.49420013121e-06,-5.86935076207e-06,-7.24912256752e-06,-8.6333855022e-06,-1.00220085493e-05,-1.14148597317e-05,-1.28118061222e-05,-1.42127138546e-05,-1.56174481348e-05,-1.7025873252e-05,-1.84378525897e-05,-1.98532486376e-05,-2.12719230026e-05,-2.26937364211e-05,-2.41185487707e-05,-2.55462190818e-05,-2.69766055502e-05,-2.84095655492e-05,-2.98449556419e-05,-3.12826315938e-05,-3.27224483856e-05,-3.41642602257e-05,-3.56079205631e-05,-3.70532821011e-05,-3.85001968093e-05,-3.99485159382e-05,-4.13980900315e-05,-4.28487689404e-05,-4.43004018369e-05,-4.57528372277e-05,-4.72059229682e-05,-4.86595062761e-05,-5.01134337464e-05,-5.15675513648e-05,-5.30217045224e-05,-5.44757380304e-05,-5.59294961346e-05,-5.73828225297e-05,-5.88355603751e-05,-6.02875523087e-05,-6.17386404629e-05,-6.31886664791e-05,-6.46374715237e-05,-6.60848963025e-05,-6.75307810771e-05,-6.89749656799e-05,-7.04172895302e-05,-7.18575916496e-05,-7.3295710678e-05,-7.47314848901e-05,-7.61647522104e-05,-7.75953502304e-05,-7.90231162245e-05,-8.0447887166e-05,-8.18694997443e-05,-8.32877903807e-05,-8.47025952454e-05,-8.61137502741e-05,-8.75210911851e-05,-8.89244534956e-05,-9.03236725392e-05,-9.17185834825e-05,-9.31090213426e-05,-9.4494821004e-05,-9.58758172361e-05,-9.72518447103e-05,-9.86227380176e-05,-9.9988331686e-05,-0.000101348460198,-0.000102702958009,-0.000104051659562,-0.000105394399311,-0.000106731011733,-0.000108061331348,-0.000109385192739,-0.000110702430567,-0.00011201287959,-0.000113316374683,-0.000114612750851,-0.000115901843255,-0.000117183487223,-0.000118457518271,-0.000119723772122,-0.000120982084725,-0.000122232292271,-0.000123474231213,-0.000124707738284,-0.000125932650514,-0.000127148805255,-0.000128356040189,-0.000129554193356,-0.000130743103169,-0.00013192260843,-0.000133092548355,-0.000134252762586,-0.000135403091214,-0.000136543374796,-0.000137673454376,-0.000138793171501,-0.000139902368239,-0.000141000887203,-0.000142088571564,-0.000143165265072,-0.000144230812077,-0.000145285057545,-0.000146327847076,-0.000147359026928,-0.000148378444028,-0.000149385945997,-0.000150381381169,-0.000151364598603,-0.000152335448111,-0.000153293780268,-0.000154239446438,-0.000155172298787,-0.000156092190307,-0.000156998974829,-0.000157892507046,-0.00015877264253,-0.000159639237751,-0.000160492150094,-0.000161331237881,-0.000162156360385,-0.000162967377851,-0.000163764151516,-0.000164546543624,-0.000165314417445,-0.000166067637295,-0.000166806068555,-0.000167529577683,-0.000168238032242,-0.000168931300908,-0.000169609253496,-0.000170271760972,-0.000170918695475,-0.000171549930333,-0.00017216534008,-0.000172764800478,-0.000173348188528,-0.000173915382491,-0.000174466261908,-0.000175000707612,-0.000175518601751,-0.0001760198278,-0.000176504270582,-0.000176971816281,-0.000177422352466,-0.000177855768101,-0.000178271953563,-0.000178670800662,-0.000179052202657,-0.000179416054267,-0.000179762251695,-0.000180090692641,-0.000180401276317,-0.000180693903464,-0.000180968476369,-0.00018122489888,-0.000181463076423,-0.000181682916016,-0.000181884326285,-0.00018206721748,-0.000182231501489,-0.000182377091857,-0.000182503903796,-0.000182611854203,-0.000182700861674,-0.000182770846519,-0.000182821730777,-0.000182853438228,-0.000182865894412,-0.000182859026637,-0.000182832764,-0.000182787037394,-0.000182721779527,-0.000182636924932,-0.000182532409984,-0.00018240817291,-0.000182264153803,-0.000182100294637,-0.000181916539277,-0.000181712833493,-0.000181489124975,-0.000181245363338,-0.000180981500145,-0.000180697488908,-0.000180393285107,-0.000180068846202,-0.000179724131638,-0.000179359102864,-0.00017897372334,-0.000178567958547,-0.000178141776002,-0.000177695145266,-0.000177228037954,-0.000176740427747,-0.0001762322904,-0.000175703603755,-0.000175154347748,-0.000174584504419,-0.000173994057923,-0.000173382994538,-0.000172751302675,-0.000172098972882,-0.000171425997861,-0.000170732372471,-0.000170018093734,-0.000169283160851,-0.0001685275752,-0.000167751340353,-0.000166954462076,-0.000166136948339,-0.000165298809326,-0.000164440057436,-0.000163560707293,-0.000162660775753,-0.000161740281909,-0.000160799247094,-0.000159837694893,-0.000158855651143,-0.000157853143942,-0.00015683020365,-0.000155786862899,-0.000154723156593,-0.000153639121914,-0.000152534798328,-0.000151410227586,-0.000150265453729,-0.000149100523093,-0.000147915484308,-0.000146710388307,-0.000145485288324,-0.000144240239897,-0.000142975300873,-0.000141690531409,-0.000140385993972,-0.000139061753343,-0.000137717876617,-0.000136354433205,-0.000134971494833,-0.000133569135547,-0.000132147431707,-0.000130706461994,-0.000129246307404,-0.000127767051254,-0.000126268779174,-0.000124751579111,-0.00012321554133,-0.000121660758406,-0.000120087325228,-0.000118495338995,-0.000116884899216,-0.000115256107704,-0.000113609068577,-0.000111943888253,-0.000110260675449,-0.000108559541176,-0.000106840598737,-0.00010510396372,-0.000103349754,-0.000101578089728,-9.97890933308e-05,-9.7982889505e-05,-9.6159605212e-05,-9.43193696724e-05,-9.24623143611e-05,-9.05885730009e-05,-8.86982815569e-05,-8.67915782301e-05,-8.48686034506e-05,-8.29294998711e-05,-8.097441236e-05,-7.90034879934e-05,-7.70168760482e-05,-7.50147279942e-05,-7.29971974855e-05,-7.09644403529e-05,-6.89166145949e-05,-6.68538803688e-05,-6.47763999819e-05,-6.26843378818e-05,-6.05778606472e-05,-5.84571369779e-05,-5.63223376845e-05,-5.41736356782e-05,-5.20112059602e-05,-4.98352256108e-05,-4.76458737785e-05,-4.5443331668e-05,-4.32277825295e-05,-4.0999411646e-05,-3.87584063217e-05,-3.65049558694e-05,-3.42392515978e-05,-3.1961486799e-05,-2.9671856735e-05,-2.73705586245e-05,-2.50577916292e-05,-2.273375684e-05,-2.03986572631e-05,-1.80526978052e-05,-1.56960852592e-05,-1.33290282894e-05,-1.09517374162e-05,-8.56442500097e-06,-6.16730523028e-06,-3.76059410041e-06,-1.34450940085e-06,1.08072930149e-06,3.51490067921e-06,5.95778166101e-06,8.40914744863e-06,1.08687715342e-05,1.33364257178e-05,1.58118801248e-05,1.82949032242e-05,2.07852618465e-05,2.32827212023e-05,2.57870449008e-05,2.82979949688e-05,3.08153318694e-05,3.33388145219e-05,3.58682003207e-05,3.84032451556e-05,4.09437034312e-05,4.34893280875e-05,4.60398706204e-05,4.8595081102e-05,5.11547082013e-05,5.37184992059e-05,5.62862000425e-05,5.8857555299e-05,6.14323082459e-05,6.4010200858e-05,6.65909738371e-05,6.91743666333e-05,7.17601174689e-05,7.43479633596e-05,7.69376401385e-05,7.95288824788e-05,8.21214239171e-05,8.47149968767e-05,8.73093326918e-05,8.99041616309e-05,9.24992129212e-05,9.50942147725e-05,9.76888944018e-05,0.000100282978058,0.000102876191047,0.000105468257756,0.000108058901678,0.00011064784544,0.000113234810826,0.000115819518802,0.000118401689545,0.000120981042465,0.000123557296235,0.000126130168816,0.000128699377481,0.000131264638845,0.000133825668893,0.000136382182999,0.000138933895965,0.000141480522036,0.000144021774939,0.0001465573679,0.00014908701368,0.000151610424598,0.000154127312561,0.00015663738909,0.000159140365353,0.000161635952186,0.00016412386013,0.000166603799451,0.000169075480177,0.000171538612119,0.000173992904908,0.000176438068017,0.000178873810793,0.00018129984249,0.000183715872291,0.000186121609343,0.000188516762785,0.000190901041779,0.000193274155537,0.000195635813353,0.000197985724633,0.000200323598925,0.000202649145949,0.000204962075625,0.000207262098108,0.000209548923816,0.000211822263458,0.00021408182807,0.000216327329041,0.000218558478145,0.000220774987573,0.000222976569963,0.000225162938431,0.000227333806601,0.000229488888637,0.000231627899274,0.000233750553849,0.000235856568333,0.000237945659359,0.000240017544258,0.000242071941084,0.000244108568653,0.000246127146568,0.000248127395252,0.000250109035982,0.000252071790916,0.000254015383128,0.000255939536637,0.00025784397644,0.000259728428542,0.00026159261999,0.0002634362789,0.000265259134492,0.000267060917121,0.000268841358307,0.000270600190767,0.000272337148447,0.000274051966551,0.000275744381577,0.000277414131342,0.000279060955019,0.000280684593165,0.000282284787752,0.0002838612822,0.000285413821408,0.000286942151782,0.000288446021271,0.000289925179392,0.000291379377268,0.00029280836765,0.000294211904958,0.000295589745303,0.000296941646521,0.000298267368206,0.000299566671736,0.000300839320307,0.00030208507896,0.000303303714616,0.0003044949961,0.000305658694178,0.00030679458158,0.000307902433036,0.000308982025302,0.00031003313719,0.0003110555496,0.000312049045547,0.000313013410191,0.000313948430867,0.000314853897113,0.000315729600699,0.000316575335659,0.000317390898314,0.000318176087306,0.000318930703623,0.00031965455063,0.000320347434094,0.000321009162216,0.000321639545654,0.000322238397557,0.000322805533586,0.000323340771946,0.000323843933411,0.000324314841354,0.00032475332177,0.000325159203305,0.000325532317283,0.00032587249773,0.000326179581405,0.000326453407819,0.00032669381927,0.000326900660858,0.00032707378052,0.00032721302905,0.000327318260127,0.000327389330335,0.000327426099196,0.000327428429185,0.000327396185762,0.000327329237392,0.000327227455569,0.000327090714841,0.000326918892835,0.000326711870275,0.00032646953101,0.000326191762033,0.000325878453509,0.000325529498789,0.000325144794439,0.000324724240261,0.000324267739309,0.000323775197918,0.000323246525719,0.000322681635663,0.00032208044404,0.000321442870501,0.000320768838077,0.000320058273197,0.00031931110571,0.000318527268905,0.000317706699527,0.000316849337796,0.000315955127428,0.000315024015652,0.000314055953225,0.000313050894456,0.000312008797215,0.000310929622957,0.000309813336734,0.000308659907216,0.000307469306703,0.00030624151114,0.000304976500139,0.000303674256987,0.000302334768666,0.000300958025862,0.000299544022987,0.000298092758186,0.000296604233353,0.000295078454148,0.000293515430002,0.000291915174139,0.00029027770358,0.000288603039161,0.000286891205543,0.000285142231221,0.000283356148538,0.000281532993697,0.000279672806764,0.000277775631689,0.000275841516305,0.000273870512346,0.000271862675451,0.000269818065174,0.000267736744992,0.000265618782315,0.00026346424849,0.000261273218812,0.000259045772529,0.000256781992849,0.000254481966946,0.000252145785966,0.000249773545033,0.000247365343253,0.000244921283722,0.000242441473525,0.000239926023745,0.000237375049465,0.000234788669769,0.000232167007751,0.00022951019051,0.000226818349158,0.000224091618821,0.000221330138637,0.000218534051762,0.000215703505365,0.000212838650636,0.000209939642779,0.000207006641014,0.000204039808579,0.000201039312723,0.000198005324712,0.000194938019819,0.000191837577329,0.00018870418053,0.000185538016717,0.000182339277181,0.00017910815721,0.000175844856084,0.00017254957707,0.000169222527417,0.00016586391835,0.000162473965066,0.000159052886725,0.000155600906448,0.000152118251304,0.000148605152309,0.000145061844414,0.000141488566498,0.000137885561361,0.000134253075712,0.000130591360164,0.000126900669219,0.000123181261265,0.000119433398559,0.000115657347218,0.00011185337721,0.000108021762341,0.000104162780243,0.000100276712361,9.63638439399e-05,9.24244640146e-05,8.84588653927e-05,8.44673446421e-05,8.04502020766e-05,7.64077417413e-05,7.23402713972e-05,6.8248102506e-05,6.4131550214e-05,5.9990933336e-05,5.58265743385e-05,5.16387993229e-05,4.74279380077e-05,4.31943237113e-05,3.89382933332e-05,3.46601873357e-05,3.03603497251e-05,2.60391280321e-05,2.16968732923e-05,1.7333940026e-05,1.29506862178e-05,8.5474732958e-06,4.12466611015e-06,-3.17367088253e-07,-4.77825466978e-06,-9.25762164862e-06,-1.37550897052e-05,-1.82702772095e-05,-2.28027992442e-05,-2.73522676289e-05,-3.1918290944e-05,-3.65004745554e-05,-4.10984206391e-05,-4.57117282069e-05,-5.03399931318e-05,-5.4982808174e-05,-5.96397630071e-05,-6.43104442453e-05,-6.89944354696e-05,-7.36913172563e-05,-7.84006672037e-05,-8.31220599608e-05,-8.78550672558e-05,-9.25992579245e-05,-9.73541979396e-05,-0.000102119450441,-0.000106894575763,-0.000111679131468,-0.000116472672375,-0.000121274750591,-0.000126084915541,-0.000130902714001,-0.000135727690128,-0.000140559385495,-0.000145397339121,-0.000150241087504,-0.000155090164656,-0.000159944102134,-0.000164802429076,-0.000169664672231,-0.000174530355999,-0.000179399002461,-0.000184270131418,-0.000189143260422,-0.000194017904813,-0.000198893577759,-0.000203769790283,-0.00020864605131,-0.000213521867697,-0.00021839674427,-0.000223270183866,-0.000228141687364,-0.00023301075373,-0.000237876880048,-0.000242739561566,-0.000247598291726,-0.00025245256221,-0.000257301862976,-0.0002621456823,-0.000266983506809,-0.00027181482153,-0.000276639109925,-0.00028145585393,-0.000286264534,-0.000291064629149,-0.000295855616986,-0.000300636973765,-0.000305408174419,-0.000310168692605,-0.000314918000748,-0.000319655570079,-0.000324380870681,-0.00032909337153,-0.000333792540539,-0.000338477844598,-0.000343148749624,-0.000347804720597,-0.000352445221608,-0.000357069715902,-0.000361677665923,-0.000366268533356,-0.000370841779174,-0.00037539686368,-0.000379933246554,-0.000384450386899,-0.000388947743283,-0.000393424773784,-0.000397880936041,-0.000402315687292,-0.000406728484428,-0.00041111878403,-0.000415486042423,-0.000419829715718,-0.000424149259858,-0.000428444130667,-0.000432713783895,-0.000436957675264,-0.000441175260518,-0.000445365995466,-0.000449529336032,-0.000453664738299,-0.000457771658561,-0.000461849553366,-0.000465897879566,-0.000469916094362,-0.000473903655356,-0.000477860020595,-0.000481784648619,-0.000485676998511,-0.000489536529942,-0.000493362703223,-0.00049715497935,-0.000500912820052,-0.000504635687841,-0.000508323046059,-0.000511974358927,-0.000515589091592,-0.000519166710179,-0.000522706681833,-0.000526208474773,-0.000529671558338,-0.000533095403037,-0.000536479480595,-0.000539823264004,-0.00054312622757,-0.000546387846961,-0.000549607599257,-0.000552784962998,-0.000555919418232,-0.000559010446563,-0.000562057531201,-0.000565060157008,-0.00056801781055,-0.000570929980141,-0.000573796155895,-0.00057661582977,-0.000579388495622,-0.000582113649247,-0.000584790788434,-0.00058741941301,-0.00058999902489,-0.000592529128122,-0.000595009228937,-0.000597438835798,-0.000599817459444,-0.000602144612941,-0.000604419811725,-0.000606642573657,-0.000608812419061,-0.000610928870778,-0.000612991454211,-0.000614999697369,-0.00061695313092,-0.000618851288231,-0.00062069370542,-0.000622479921398,-0.000624209477919,-0.000625881919623,-0.000627496794084,-0.000629053651855,-0.000630552046515,-0.000631991534713,-0.000633371676211,-0.000634692033937,-0.00063595217402,-0.000637151665844,-0.000638290082085,-0.000639366998761,-0.000640381995273,-0.000641334654452,-0.000642224562599,-0.000643051309533,-0.000643814488629,-0.000644513696868,-0.000645148534874,-0.000645718606962,-0.000646223521175,-0.000646662889331,-0.000647036327063,-0.000647343453863,-0.000647583893119,-0.000647757272162,-0.000647863222303,-0.000647901378875,-0.000647871381277,-0.000647772873008,-0.000647605501712,-0.000647368919217,-0.000647062781574,-0.000646686749095,-0.000646240486395,-0.000645723662426,-0.000645135950522,-0.000644477028432,-0.000643746578359,-0.000642944286998,-0.000642069845573,-0.000641122949876,-0.000640103300298,-0.000639010601873,-0.000637844564306,-0.000636604902016,-0.000635291334166,-0.000633903584699,-0.000632441382375,-0.000630904460804,-0.000629292558477,-0.000627605418806,-0.00062584279015,-0.000624004425854,-0.000622090084279,-0.000620099528831,-0.000618032527999,-0.000615888855383,-0.000613668289724,-0.000611370614939,-0.000608995620144,-0.000606543099692,-0.000604012853199,-0.000601404685571,-0.000598718407035,-0.00059595383317,-0.000593110784929,-0.000590189088672,-0.000587188576189,-0.00058410908473,-0.00058095045703,-0.000577712541336,-0.000574395191428,-0.000570998266652,-0.000567521631936,-0.000563965157823,-0.000560328720486,-0.000556612201759,-0.000552815489154,-0.000548938475889,-0.000544981060906,-0.000540943148892,-0.000536824650305,-0.000532625481391,-0.000528345564203,-0.000523984826627,-0.000519543202394,-0.000515020631103,-0.000510417058239,-0.000505732435192,-0.000500966719271,-0.000496119873725,-0.000491191867757,-0.000486182676542,-0.000481092281241,-0.000475920669017,-0.00047066783305,-0.000465333772552,-0.000459918492776,-0.000454422005037,-0.000448844326719,-0.000443185481288,-0.000437445498306,-0.000431624413441,-0.000425722268477,-0.000419739111325,-0.000413674996036,-0.000407529982803,-0.000401304137978,-0.000394997534073,-0.000388610249774,-0.000382142369945,-0.000375593985636,-0.000368965194086,-0.000362256098735,-0.000355466809224,-0.000348597441402,-0.000341648117331,-0.000334618965287,-0.000327510119766,-0.000320321721484,-0.000313053917385,-0.000305706860633,-0.000298280710623,-0.000290775632976,-0.000283191799539,-0.00027552938839,-0.00026778858383,-0.000259969576385,-0.000252072562806,-0.000244097746062,-0.000236045335342,-0.000227915546046,-0.000219708599788,-0.000211424724383,-0.000203064153848,-0.000194627128397,-0.000186113894428,-0.000177524704525,-0.000168859817444,-0.00016011949811,-0.000151304017604,-0.000142413653161,-0.000133448688153,-0.000124409412084,-0.00011529612058,-0.000106109115375,-9.68487043016e-05,-8.75152012791e-05,-7.81089263006e-05,-6.86302054203e-05,-5.90793707396e-05,-4.94567603938e-05,-3.97627185366e-05,-2.99975953261e-05,-2.01617469084e-05,-1.0255535402e-05,-2.79328880782e-07,9.7664986427e-06,1.98815672352e-05,3.00654910607e-05,4.03178783995e-05,5.06383316668e-05,6.10264474332e-05,7.1481816444e-05,8.20040236409e-05,9.25926481826e-05,0.000103247263467,0.000113967437153,0.000124752731183,0.000135602701808,0.00014651689961,0.000157494869524,0.000168536150869,0.000179640277367,0.000190806777173,0.000202035172896,0.000213324981635,0.000224675714995,0.000236086879126,0.000247557974741,0.000259088497152,0.000270677936296,0.000282325776766,0.000294031497841,0.000305794573516,0.000317614472532,0.000329490658412,0.000341422589488,0.000353409718937,0.000365451494814,0.000377547360083,0.000389696752652,0.00040189910541,0.000414153846259,0.000426460398149,0.000438818179118,0.000451226602322,0.000463685076078,0.000476193003896,0.000488749784522,0.000501354811969,0.000514007475563,0.000526707159977,0.000539453245272,0.000552245106936,0.000565082115926,0.000577963638708,0.000590889037295,0.000603857669294,0.000616868887944,0.000629922042158,0.000643016476571,0.000656151531575,0.000669326543368,0.000682540843999,0.000695793761407,0.000709084619472,0.000722412738053,0.000735777433041,0.000749178016399,0.000762613796213,0.000776084076734,0.000789588158428,0.000803125338023,0.000816694908556,0.000830296159422,0.000843928376421,0.000857590841809,0.000871282834345,0.000885003629341,0.000898752498714,0.000912528711034,0.000926331531572,0.000940160222358,0.000954014042226,0.000967892246867,0.000981794088883,0.000995718817835,0.0010096656803,0.00102363391992,0.00103762277746,0.00105163149085,0.00106565929526,0.00107970542312,0.00109376910422,0.00110784956571,0.00112194603222,0.00113605772584,0.00115018386624,0.00116432367069,0.00117847635414,0.00119264112923,0.00120681720641,0.00122100379394,0.00123520009799,0.00124940532267,0.0012636186701,0.00127783934044,0.00129206653201,0.00130629944127,0.00132053726295,0.00133477919004,0.0013490244139,0.00136327212432,0.00137752150954,0.00139177175631,0.00140602205002,0.00142027157467,0.00143451951297,0.00144876504642,0.00146300735532,0.00147724561888,0.00149147901525,0.00150570672159,0.00151992791411,0.00153414176819,0.00154834745836,0.00156254415842,0.00157673104148,0.00159090728002,0.00160507204597,0.00161922451073,0.00163336384527,0.00164748922018,0.00166159980574,0.00167569477194,0.00168977328862,0.00170383452545,0.00171787765203,0.00173190183798,0.00174590625292,0.00175989006664,0.00177385244907,0.00178779257039,0.00180170960108,0.00181560271197,0.00182947107434,0.00184331385993,0.00185713024105,0.00187091939062,0.00188468048221,0.00189841269017,0.0019121151896,0.00192578715649,0.00193942776776,0.00195303620129,0.00196661163603,0.00198015325202,0.0019936602305,0.00200713175392,0.00202056700603,0.00203396517194,0.0020473254382,0.00206064699281,0.00207392902534,0.00208717072695,0.00210037129047,0.00211352991046,0.00212664578329,0.00213971810714,0.00215274608215,0.00216572891041,0.00217866579603,0.00219155594525,0.00220439856645,0.00221719287023,0.00222993806946,0.00224263337937,0.00225527801757,0.00226787120414,0.00228041216167,0.00229290011534,0.00230533429296,0.00231771392505,0.00233003824488,0.00234230648852,0.00235451789495,0.00236667170606,0.00237876716675,0.00239080352495,0.00240278003171,0.00241469594126,0.00242655051104,0.00243834300177,0.00245007267752,0.00246173880576,0.0024733406574,0.00248487750687,0.00249634863217,0.00250775331491,0.00251909084039,0.00253036049764,0.00254156157948,0.00255269338258,0.00256375520749,0.00257474635874,0.00258566614485,0.0025965138784,0.00260728887611,0.00261799045883,0.00262861795166,0.00263917068398,0.00264964798946,0.00266004920618,0.00267037367665,0.00268062074785,0.00269078977129,0.00270088010307,0.00271089110394,0.0027208221393,0.00273067257931,0.00274044179891,0.00275012917786,0.0027597341008,0.00276925595732,0.00277869414197,0.00278804805432,0.00279731709903,0.00280650068587,0.00281559822975,0.00282460915083,0.00283353287451,0.00284236883148,0.00285111645779,0.00285977519487,0.0028683444896,0.00287682379433,0.00288521256692,0.0028935102708,0.00290171637502,0.00290983035427,0.00291785168891,0.00292577986505,0.00293361437458,0.00294135471517,0.00294900039037,0.0029565509096,0.00296400578822,0.00297136454756,0.00297862671493,0.00298579182371,0.00299285941335,0.0029998290294,0.00300670022358,0.00301347255379,0.00302014558414,0.00302671888503,0.0030331920331,0.00303956461136,0.00304583620915,0.00305200642219,0.00305807485266,0.00306404110915,0.00306990480675,0.00307566556707,0.00308132301827,0.00308687679505,0.00309232653875,0.00309767189731,0.00310291252536,0.00310804808419,0.0031130782418,0.00311800267297,0.00312282105919,0.00312753308877,0.00313213845684,0.00313663686536,0.00314102802314,0.0031453116459,0.00314948745626,0.00315355518375,0.00315751456488,0.00316136534313,0.00316510726896,0.00316874009984,0.00317226360029,0.00317567754187,0.00317898170321,0.00318217587003,0.00318525983516,0.00318823339852,0.00319109636722,0.00319384855546,0.00319648978465,0.00319901988337,0.00320143868739,0.00320374603969,0.00320594179046,0.00320802579713,0.00320999792438,0.00321185804414,0.00321360603559,0.0032152417852,0.00321676518671,0.00321817614117,0.0032194745569,0.00322066034956,0.0032217334421,0.00322269376478,0.00322354125522,0.00322427585835,0.00322489752641,0.00322540621902,0.00322580190311,0.00322608455298,0.00322625415025,0.00322631068389,0.00322625415025,0.00322608455298,0.00322580190311,0.00322540621902,0.00322489752641,0.00322427585835,0.00322354125522,0.00322269376478,0.0032217334421,0.00322066034956,0.0032194745569,0.00321817614117,0.00321676518671,0.0032152417852,0.00321360603559,0.00321185804414,0.00320999792438,0.00320802579713,0.00320594179046,0.00320374603969,0.00320143868739,0.00319901988337,0.00319648978465,0.00319384855546,0.00319109636722,0.00318823339852,0.00318525983516,0.00318217587003,0.00317898170321,0.00317567754187,0.00317226360029,0.00316874009984,0.00316510726896,0.00316136534313,0.00315751456488,0.00315355518375,0.00314948745626,0.0031453116459,0.00314102802314,0.00313663686536,0.00313213845684,0.00312753308877,0.00312282105919,0.00311800267297,0.0031130782418,0.00310804808419,0.00310291252536,0.00309767189731,0.00309232653875,0.00308687679505,0.00308132301827,0.00307566556707,0.00306990480675,0.00306404110915,0.00305807485266,0.00305200642219,0.00304583620915,0.00303956461136,0.0030331920331,0.00302671888503,0.00302014558414,0.00301347255379,0.00300670022358,0.0029998290294,0.00299285941335,0.00298579182371,0.00297862671493,0.00297136454756,0.00296400578822,0.0029565509096,0.00294900039037,0.00294135471517,0.00293361437458,0.00292577986505,0.00291785168891,0.00290983035427,0.00290171637502,0.0028935102708,0.00288521256692,0.00287682379433,0.0028683444896,0.00285977519487,0.00285111645779,0.00284236883148,0.00283353287451,0.00282460915083,0.00281559822975,0.00280650068587,0.00279731709903,0.00278804805432,0.00277869414197,0.00276925595732,0.0027597341008,0.00275012917786,0.00274044179891,0.00273067257931,0.0027208221393,0.00271089110394,0.00270088010307,0.00269078977129,0.00268062074785,0.00267037367665,0.00266004920618,0.00264964798946,0.00263917068398,0.00262861795166,0.00261799045883,0.00260728887611,0.0025965138784,0.00258566614485,0.00257474635874,0.00256375520749,0.00255269338258,0.00254156157948,0.00253036049764,0.00251909084039,0.00250775331491,0.00249634863217,0.00248487750687,0.0024733406574,0.00246173880576,0.00245007267752,0.00243834300177,0.00242655051104,0.00241469594126,0.00240278003171,0.00239080352495,0.00237876716675,0.00236667170606,0.00235451789495,0.00234230648852,0.00233003824488,0.00231771392505,0.00230533429296,0.00229290011534,0.00228041216167,0.00226787120414,0.00225527801757,0.00224263337937,0.00222993806946,0.00221719287023,0.00220439856645,0.00219155594525,0.00217866579603,0.00216572891041,0.00215274608215,0.00213971810714,0.00212664578329,0.00211352991046,0.00210037129047,0.00208717072695,0.00207392902534,0.00206064699281,0.0020473254382,0.00203396517194,0.00202056700603,0.00200713175392,0.0019936602305,0.00198015325202,0.00196661163603,0.00195303620129,0.00193942776776,0.00192578715649,0.0019121151896,0.00189841269017,0.00188468048221,0.00187091939062,0.00185713024105,0.00184331385993,0.00182947107434,0.00181560271197,0.00180170960108,0.00178779257039,0.00177385244907,0.00175989006664,0.00174590625292,0.00173190183798,0.00171787765203,0.00170383452545,0.00168977328862,0.00167569477194,0.00166159980574,0.00164748922018,0.00163336384527,0.00161922451073,0.00160507204597,0.00159090728002,0.00157673104148,0.00156254415842,0.00154834745836,0.00153414176819,0.00151992791411,0.00150570672159,0.00149147901525,0.00147724561888,0.00146300735532,0.00144876504642,0.00143451951297,0.00142027157467,0.00140602205002,0.00139177175631,0.00137752150954,0.00136327212432,0.0013490244139,0.00133477919004,0.00132053726295,0.00130629944127,0.00129206653201,0.00127783934044,0.0012636186701,0.00124940532267,0.00123520009799,0.00122100379394,0.00120681720641,0.00119264112923,0.00117847635414,0.00116432367069,0.00115018386624,0.00113605772584,0.00112194603222,0.00110784956571,0.00109376910422,0.00107970542312,0.00106565929526,0.00105163149085,0.00103762277746,0.00102363391992,0.0010096656803,0.000995718817835,0.000981794088883,0.000967892246867,0.000954014042226,0.000940160222358,0.000926331531572,0.000912528711034,0.000898752498714,0.000885003629341,0.000871282834345,0.000857590841809,0.000843928376421,0.000830296159422,0.000816694908556,0.000803125338023,0.000789588158428,0.000776084076734,0.000762613796213,0.000749178016399,0.000735777433041,0.000722412738053,0.000709084619472,0.000695793761407,0.000682540843999,0.000669326543368,0.000656151531575,0.000643016476571,0.000629922042158,0.000616868887944,0.000603857669294,0.000590889037295,0.000577963638708,0.000565082115926,0.000552245106936,0.000539453245272,0.000526707159977,0.000514007475563,0.000501354811969,0.000488749784522,0.000476193003896,0.000463685076078,0.000451226602322,0.000438818179118,0.000426460398149,0.000414153846259,0.00040189910541,0.000389696752652,0.000377547360083,0.000365451494814,0.000353409718937,0.000341422589488,0.000329490658412,0.000317614472532,0.000305794573516,0.000294031497841,0.000282325776766,0.000270677936296,0.000259088497152,0.000247557974741,0.000236086879126,0.000224675714995,0.000213324981635,0.000202035172896,0.000190806777173,0.000179640277367,0.000168536150869,0.000157494869524,0.00014651689961,0.000135602701808,0.000124752731183,0.000113967437153,0.000103247263467,9.25926481826e-05,8.20040236409e-05,7.1481816444e-05,6.10264474332e-05,5.06383316668e-05,4.03178783995e-05,3.00654910607e-05,1.98815672352e-05,9.7664986427e-06,-2.79328880782e-07,-1.0255535402e-05,-2.01617469084e-05,-2.99975953261e-05,-3.97627185366e-05,-4.94567603938e-05,-5.90793707396e-05,-6.86302054203e-05,-7.81089263006e-05,-8.75152012791e-05,-9.68487043016e-05,-0.000106109115375,-0.00011529612058,-0.000124409412084,-0.000133448688153,-0.000142413653161,-0.000151304017604,-0.00016011949811,-0.000168859817444,-0.000177524704525,-0.000186113894428,-0.000194627128397,-0.000203064153848,-0.000211424724383,-0.000219708599788,-0.000227915546046,-0.000236045335342,-0.000244097746062,-0.000252072562806,-0.000259969576385,-0.00026778858383,-0.00027552938839,-0.000283191799539,-0.000290775632976,-0.000298280710623,-0.000305706860633,-0.000313053917385,-0.000320321721484,-0.000327510119766,-0.000334618965287,-0.000341648117331,-0.000348597441402,-0.000355466809224,-0.000362256098735,-0.000368965194086,-0.000375593985636,-0.000382142369945,-0.000388610249774,-0.000394997534073,-0.000401304137978,-0.000407529982803,-0.000413674996036,-0.000419739111325,-0.000425722268477,-0.000431624413441,-0.000437445498306,-0.000443185481288,-0.000448844326719,-0.000454422005037,-0.000459918492776,-0.000465333772552,-0.00047066783305,-0.000475920669017,-0.000481092281241,-0.000486182676542,-0.000491191867757,-0.000496119873725,-0.000500966719271,-0.000505732435192,-0.000510417058239,-0.000515020631103,-0.000519543202394,-0.000523984826627,-0.000528345564203,-0.000532625481391,-0.000536824650305,-0.000540943148892,-0.000544981060906,-0.000548938475889,-0.000552815489154,-0.000556612201759,-0.000560328720486,-0.000563965157823,-0.000567521631936,-0.000570998266652,-0.000574395191428,-0.000577712541336,-0.00058095045703,-0.00058410908473,-0.000587188576189,-0.000590189088672,-0.000593110784929,-0.00059595383317,-0.000598718407035,-0.000601404685571,-0.000604012853199,-0.000606543099692,-0.000608995620144,-0.000611370614939,-0.000613668289724,-0.000615888855383,-0.000618032527999,-0.000620099528831,-0.000622090084279,-0.000624004425854,-0.00062584279015,-0.000627605418806,-0.000629292558477,-0.000630904460804,-0.000632441382375,-0.000633903584699,-0.000635291334166,-0.000636604902016,-0.000637844564306,-0.000639010601873,-0.000640103300298,-0.000641122949876,-0.000642069845573,-0.000642944286998,-0.000643746578359,-0.000644477028432,-0.000645135950522,-0.000645723662426,-0.000646240486395,-0.000646686749095,-0.000647062781574,-0.000647368919217,-0.000647605501712,-0.000647772873008,-0.000647871381277,-0.000647901378875,-0.000647863222303,-0.000647757272162,-0.000647583893119,-0.000647343453863,-0.000647036327063,-0.000646662889331,-0.000646223521175,-0.000645718606962,-0.000645148534874,-0.000644513696868,-0.000643814488629,-0.000643051309533,-0.000642224562599,-0.000641334654452,-0.000640381995273,-0.000639366998761,-0.000638290082085,-0.000637151665844,-0.00063595217402,-0.000634692033937,-0.000633371676211,-0.000631991534713,-0.000630552046515,-0.000629053651855,-0.000627496794084,-0.000625881919623,-0.000624209477919,-0.000622479921398,-0.00062069370542,-0.000618851288231,-0.00061695313092,-0.000614999697369,-0.000612991454211,-0.000610928870778,-0.000608812419061,-0.000606642573657,-0.000604419811725,-0.000602144612941,-0.000599817459444,-0.000597438835798,-0.000595009228937,-0.000592529128122,-0.00058999902489,-0.00058741941301,-0.000584790788434,-0.000582113649247,-0.000579388495622,-0.00057661582977,-0.000573796155895,-0.000570929980141,-0.00056801781055,-0.000565060157008,-0.000562057531201,-0.000559010446563,-0.000555919418232,-0.000552784962998,-0.000549607599257,-0.000546387846961,-0.00054312622757,-0.000539823264004,-0.000536479480595,-0.000533095403037,-0.000529671558338,-0.000526208474773,-0.000522706681833,-0.000519166710179,-0.000515589091592,-0.000511974358927,-0.000508323046059,-0.000504635687841,-0.000500912820052,-0.00049715497935,-0.000493362703223,-0.000489536529942,-0.000485676998511,-0.000481784648619,-0.000477860020595,-0.000473903655356,-0.000469916094362,-0.000465897879566,-0.000461849553366,-0.000457771658561,-0.000453664738299,-0.000449529336032,-0.000445365995466,-0.000441175260518,-0.000436957675264,-0.000432713783895,-0.000428444130667,-0.000424149259858,-0.000419829715718,-0.000415486042423,-0.00041111878403,-0.000406728484428,-0.000402315687292,-0.000397880936041,-0.000393424773784,-0.000388947743283,-0.000384450386899,-0.000379933246554,-0.00037539686368,-0.000370841779174,-0.000366268533356,-0.000361677665923,-0.000357069715902,-0.000352445221608,-0.000347804720597,-0.000343148749624,-0.000338477844598,-0.000333792540539,-0.00032909337153,-0.000324380870681,-0.000319655570079,-0.000314918000748,-0.000310168692605,-0.000305408174419,-0.000300636973765,-0.000295855616986,-0.000291064629149,-0.000286264534,-0.00028145585393,-0.000276639109925,-0.00027181482153,-0.000266983506809,-0.0002621456823,-0.000257301862976,-0.00025245256221,-0.000247598291726,-0.000242739561566,-0.000237876880048,-0.00023301075373,-0.000228141687364,-0.000223270183866,-0.00021839674427,-0.000213521867697,-0.00020864605131,-0.000203769790283,-0.000198893577759,-0.000194017904813,-0.000189143260422,-0.000184270131418,-0.000179399002461,-0.000174530355999,-0.000169664672231,-0.000164802429076,-0.000159944102134,-0.000155090164656,-0.000150241087504,-0.000145397339121,-0.000140559385495,-0.000135727690128,-0.000130902714001,-0.000126084915541,-0.000121274750591,-0.000116472672375,-0.000111679131468,-0.000106894575763,-0.000102119450441,-9.73541979396e-05,-9.25992579245e-05,-8.78550672558e-05,-8.31220599608e-05,-7.84006672037e-05,-7.36913172563e-05,-6.89944354696e-05,-6.43104442453e-05,-5.96397630071e-05,-5.4982808174e-05,-5.03399931318e-05,-4.57117282069e-05,-4.10984206391e-05,-3.65004745554e-05,-3.1918290944e-05,-2.73522676289e-05,-2.28027992442e-05,-1.82702772095e-05,-1.37550897052e-05,-9.25762164862e-06,-4.77825466978e-06,-3.17367088253e-07,4.12466611015e-06,8.5474732958e-06,1.29506862178e-05,1.7333940026e-05,2.16968732923e-05,2.60391280321e-05,3.03603497251e-05,3.46601873357e-05,3.89382933332e-05,4.31943237113e-05,4.74279380077e-05,5.16387993229e-05,5.58265743385e-05,5.9990933336e-05,6.4131550214e-05,6.8248102506e-05,7.23402713972e-05,7.64077417413e-05,8.04502020766e-05,8.44673446421e-05,8.84588653927e-05,9.24244640146e-05,9.63638439399e-05,0.000100276712361,0.000104162780243,0.000108021762341,0.00011185337721,0.000115657347218,0.000119433398559,0.000123181261265,0.000126900669219,0.000130591360164,0.000134253075712,0.000137885561361,0.000141488566498,0.000145061844414,0.000148605152309,0.000152118251304,0.000155600906448,0.000159052886725,0.000162473965066,0.00016586391835,0.000169222527417,0.00017254957707,0.000175844856084,0.00017910815721,0.000182339277181,0.000185538016717,0.00018870418053,0.000191837577329,0.000194938019819,0.000198005324712,0.000201039312723,0.000204039808579,0.000207006641014,0.000209939642779,0.000212838650636,0.000215703505365,0.000218534051762,0.000221330138637,0.000224091618821,0.000226818349158,0.00022951019051,0.000232167007751,0.000234788669769,0.000237375049465,0.000239926023745,0.000242441473525,0.000244921283722,0.000247365343253,0.000249773545033,0.000252145785966,0.000254481966946,0.000256781992849,0.000259045772529,0.000261273218812,0.00026346424849,0.000265618782315,0.000267736744992,0.000269818065174,0.000271862675451,0.000273870512346,0.000275841516305,0.000277775631689,0.000279672806764,0.000281532993697,0.000283356148538,0.000285142231221,0.000286891205543,0.000288603039161,0.00029027770358,0.000291915174139,0.000293515430002,0.000295078454148,0.000296604233353,0.000298092758186,0.000299544022987,0.000300958025862,0.000302334768666,0.000303674256987,0.000304976500139,0.00030624151114,0.000307469306703,0.000308659907216,0.000309813336734,0.000310929622957,0.000312008797215,0.000313050894456,0.000314055953225,0.000315024015652,0.000315955127428,0.000316849337796,0.000317706699527,0.000318527268905,0.00031931110571,0.000320058273197,0.000320768838077,0.000321442870501,0.00032208044404,0.000322681635663,0.000323246525719,0.000323775197918,0.000324267739309,0.000324724240261,0.000325144794439,0.000325529498789,0.000325878453509,0.000326191762033,0.00032646953101,0.000326711870275,0.000326918892835,0.000327090714841,0.000327227455569,0.000327329237392,0.000327396185762,0.000327428429185,0.000327426099196,0.000327389330335,0.000327318260127,0.00032721302905,0.00032707378052,0.000326900660858,0.00032669381927,0.000326453407819,0.000326179581405,0.00032587249773,0.000325532317283,0.000325159203305,0.00032475332177,0.000324314841354,0.000323843933411,0.000323340771946,0.000322805533586,0.000322238397557,0.000321639545654,0.000321009162216,0.000320347434094,0.00031965455063,0.000318930703623,0.000318176087306,0.000317390898314,0.000316575335659,0.000315729600699,0.000314853897113,0.000313948430867,0.000313013410191,0.000312049045547,0.0003110555496,0.00031003313719,0.000308982025302,0.000307902433036,0.00030679458158,0.000305658694178,0.0003044949961,0.000303303714616,0.00030208507896,0.000300839320307,0.000299566671736,0.000298267368206,0.000296941646521,0.000295589745303,0.000294211904958,0.00029280836765,0.000291379377268,0.000289925179392,0.000288446021271,0.000286942151782,0.000285413821408,0.0002838612822,0.000282284787752,0.000280684593165,0.000279060955019,0.000277414131342,0.000275744381577,0.000274051966551,0.000272337148447,0.000270600190767,0.000268841358307,0.000267060917121,0.000265259134492,0.0002634362789,0.00026159261999,0.000259728428542,0.00025784397644,0.000255939536637,0.000254015383128,0.000252071790916,0.000250109035982,0.000248127395252,0.000246127146568,0.000244108568653,0.000242071941084,0.000240017544258,0.000237945659359,0.000235856568333,0.000233750553849,0.000231627899274,0.000229488888637,0.000227333806601,0.000225162938431,0.000222976569963,0.000220774987573,0.000218558478145,0.000216327329041,0.00021408182807,0.000211822263458,0.000209548923816,0.000207262098108,0.000204962075625,0.000202649145949,0.000200323598925,0.000197985724633,0.000195635813353,0.000193274155537,0.000190901041779,0.000188516762785,0.000186121609343,0.000183715872291,0.00018129984249,0.000178873810793,0.000176438068017,0.000173992904908,0.000171538612119,0.000169075480177,0.000166603799451,0.00016412386013,0.000161635952186,0.000159140365353,0.00015663738909,0.000154127312561,0.000151610424598,0.00014908701368,0.0001465573679,0.000144021774939,0.000141480522036,0.000138933895965,0.000136382182999,0.000133825668893,0.000131264638845,0.000128699377481,0.000126130168816,0.000123557296235,0.000120981042465,0.000118401689545,0.000115819518802,0.000113234810826,0.00011064784544,0.000108058901678,0.000105468257756,0.000102876191047,0.000100282978058,9.76888944018e-05,9.50942147725e-05,9.24992129212e-05,8.99041616309e-05,8.73093326918e-05,8.47149968767e-05,8.21214239171e-05,7.95288824788e-05,7.69376401385e-05,7.43479633596e-05,7.17601174689e-05,6.91743666333e-05,6.65909738371e-05,6.4010200858e-05,6.14323082459e-05,5.8857555299e-05,5.62862000425e-05,5.37184992059e-05,5.11547082013e-05,4.8595081102e-05,4.60398706204e-05,4.34893280875e-05,4.09437034312e-05,3.84032451556e-05,3.58682003207e-05,3.33388145219e-05,3.08153318694e-05,2.82979949688e-05,2.57870449008e-05,2.32827212023e-05,2.07852618465e-05,1.82949032242e-05,1.58118801248e-05,1.33364257178e-05,1.08687715342e-05,8.40914744863e-06,5.95778166101e-06,3.51490067921e-06,1.08072930149e-06,-1.34450940085e-06,-3.76059410041e-06,-6.16730523028e-06,-8.56442500097e-06,-1.09517374162e-05,-1.33290282894e-05,-1.56960852592e-05,-1.80526978052e-05,-2.03986572631e-05,-2.273375684e-05,-2.50577916292e-05,-2.73705586245e-05,-2.9671856735e-05,-3.1961486799e-05,-3.42392515978e-05,-3.65049558694e-05,-3.87584063217e-05,-4.0999411646e-05,-4.32277825295e-05,-4.5443331668e-05,-4.76458737785e-05,-4.98352256108e-05,-5.20112059602e-05,-5.41736356782e-05,-5.63223376845e-05,-5.84571369779e-05,-6.05778606472e-05,-6.26843378818e-05,-6.47763999819e-05,-6.68538803688e-05,-6.89166145949e-05,-7.09644403529e-05,-7.29971974855e-05,-7.50147279942e-05,-7.70168760482e-05,-7.90034879934e-05,-8.097441236e-05,-8.29294998711e-05,-8.48686034506e-05,-8.67915782301e-05,-8.86982815569e-05,-9.05885730009e-05,-9.24623143611e-05,-9.43193696724e-05,-9.6159605212e-05,-9.7982889505e-05,-9.97890933308e-05,-0.000101578089728,-0.000103349754,-0.00010510396372,-0.000106840598737,-0.000108559541176,-0.000110260675449,-0.000111943888253,-0.000113609068577,-0.000115256107704,-0.000116884899216,-0.000118495338995,-0.000120087325228,-0.000121660758406,-0.00012321554133,-0.000124751579111,-0.000126268779174,-0.000127767051254,-0.000129246307404,-0.000130706461994,-0.000132147431707,-0.000133569135547,-0.000134971494833,-0.000136354433205,-0.000137717876617,-0.000139061753343,-0.000140385993972,-0.000141690531409,-0.000142975300873,-0.000144240239897,-0.000145485288324,-0.000146710388307,-0.000147915484308,-0.000149100523093,-0.000150265453729,-0.000151410227586,-0.000152534798328,-0.000153639121914,-0.000154723156593,-0.000155786862899,-0.00015683020365,-0.000157853143942,-0.000158855651143,-0.000159837694893,-0.000160799247094,-0.000161740281909,-0.000162660775753,-0.000163560707293,-0.000164440057436,-0.000165298809326,-0.000166136948339,-0.000166954462076,-0.000167751340353,-0.0001685275752,-0.000169283160851,-0.000170018093734,-0.000170732372471,-0.000171425997861,-0.000172098972882,-0.000172751302675,-0.000173382994538,-0.000173994057923,-0.000174584504419,-0.000175154347748,-0.000175703603755,-0.0001762322904,-0.000176740427747,-0.000177228037954,-0.000177695145266,-0.000178141776002,-0.000178567958547,-0.00017897372334,-0.000179359102864,-0.000179724131638,-0.000180068846202,-0.000180393285107,-0.000180697488908,-0.000180981500145,-0.000181245363338,-0.000181489124975,-0.000181712833493,-0.000181916539277,-0.000182100294637,-0.000182264153803,-0.00018240817291,-0.000182532409984,-0.000182636924932,-0.000182721779527,-0.000182787037394,-0.000182832764,-0.000182859026637,-0.000182865894412,-0.000182853438228,-0.000182821730777,-0.000182770846519,-0.000182700861674,-0.000182611854203,-0.000182503903796,-0.000182377091857,-0.000182231501489,-0.00018206721748,-0.000181884326285,-0.000181682916016,-0.000181463076423,-0.00018122489888,-0.000180968476369,-0.000180693903464,-0.000180401276317,-0.000180090692641,-0.000179762251695,-0.000179416054267,-0.000179052202657,-0.000178670800662,-0.000178271953563,-0.000177855768101,-0.000177422352466,-0.000176971816281,-0.000176504270582,-0.0001760198278,-0.000175518601751,-0.000175000707612,-0.000174466261908,-0.000173915382491,-0.000173348188528,-0.000172764800478,-0.00017216534008,-0.000171549930333,-0.000170918695475,-0.000170271760972,-0.000169609253496,-0.000168931300908,-0.000168238032242,-0.000167529577683,-0.000166806068555,-0.000166067637295,-0.000165314417445,-0.000164546543624,-0.000163764151516,-0.000162967377851,-0.000162156360385,-0.000161331237881,-0.000160492150094,-0.000159639237751,-0.00015877264253,-0.000157892507046,-0.000156998974829,-0.000156092190307,-0.000155172298787,-0.000154239446438,-0.000153293780268,-0.000152335448111,-0.000151364598603,-0.000150381381169,-0.000149385945997,-0.000148378444028,-0.000147359026928,-0.000146327847076,-0.000145285057545,-0.000144230812077,-0.000143165265072,-0.000142088571564,-0.000141000887203,-0.000139902368239,-0.000138793171501,-0.000137673454376,-0.000136543374796,-0.000135403091214,-0.000134252762586,-0.000133092548355,-0.00013192260843,-0.000130743103169,-0.000129554193356,-0.000128356040189,-0.000127148805255,-0.000125932650514,-0.000124707738284,-0.000123474231213,-0.000122232292271,-0.000120982084725,-0.000119723772122,-0.000118457518271,-0.000117183487223,-0.000115901843255,-0.000114612750851,-0.000113316374683,-0.00011201287959,-0.000110702430567,-0.000109385192739,-0.000108061331348,-0.000106731011733,-0.000105394399311,-0.000104051659562,-0.000102702958009,-0.000101348460198,-9.9988331686e-05,-9.86227380176e-05,-9.72518447103e-05,-9.58758172361e-05,-9.4494821004e-05,-9.31090213426e-05,-9.17185834825e-05,-9.03236725392e-05,-8.89244534956e-05,-8.75210911851e-05,-8.61137502741e-05,-8.47025952454e-05,-8.32877903807e-05,-8.18694997443e-05,-8.0447887166e-05,-7.90231162245e-05,-7.75953502304e-05,-7.61647522104e-05,-7.47314848901e-05,-7.3295710678e-05,-7.18575916496e-05,-7.04172895302e-05,-6.89749656799e-05,-6.75307810771e-05,-6.60848963025e-05,-6.46374715237e-05,-6.31886664791e-05,-6.17386404629e-05,-6.02875523087e-05,-5.88355603751e-05,-5.73828225297e-05,-5.59294961346e-05,-5.44757380304e-05,-5.30217045224e-05,-5.15675513648e-05,-5.01134337464e-05,-4.86595062761e-05,-4.72059229682e-05,-4.57528372277e-05,-4.43004018369e-05,-4.28487689404e-05,-4.13980900315e-05,-3.99485159382e-05,-3.85001968093e-05,-3.70532821011e-05,-3.56079205631e-05,-3.41642602257e-05,-3.27224483856e-05,-3.12826315938e-05,-2.98449556419e-05,-2.84095655492e-05,-2.69766055502e-05,-2.55462190818e-05,-2.41185487707e-05,-2.26937364211e-05,-2.12719230026e-05,-1.98532486376e-05,-1.84378525897e-05,-1.7025873252e-05,-1.56174481348e-05,-1.42127138546e-05,-1.28118061222e-05,-1.14148597317e-05,-1.00220085493e-05,-8.6333855022e-06,-7.24912256752e-06,-5.86935076207e-06,-4.49420013121e-06,-3.12379973867e-06,-1.75827765627e-06,-3.97760953605e-07,9.5762431195e-07,2.30775310496e-06,3.65250142205e-06,4.99174630087e-06,6.32536583029e-06,7.653239159e-06,8.97524650518e-06,1.02912691651e-05,1.16011895223e-05,1.29048910559e-05,1.42022583498e-05,1.54931771003e-05,1.67775341247e-05,1.80552173697e-05,1.93261159187e-05,2.05901200002e-05,2.1847120995e-05,2.30970114441e-05,2.43396850556e-05,2.5575036712e-05,2.68029624776e-05,2.80233596049e-05,2.92361265416e-05,3.0441162937e-05,3.16383696485e-05,3.2827648748e-05,3.40089035276e-05,3.5182038506e-05,3.6346959434e-05,3.75035733004e-05,3.86517883372e-05,3.9791514025e-05,4.09226610984e-05,4.20451415508e-05,4.31588686392e-05,4.42637568892e-05,4.53597220992e-05,4.64466813454e-05,4.75245529851e-05,4.85932566616e-05,4.9652713308e-05,5.07028451505e-05,5.17435757127e-05,5.27748298187e-05,5.37965335961e-05,5.48086144801e-05,5.58110012154e-05,5.68036238601e-05,5.77864137874e-05,5.87593036892e-05,5.97222275774e-05,6.06751207871e-05,6.16179199781e-05,6.25505631371e-05,6.34729895795e-05,6.43851399507e-05,6.52869562281e-05,6.61783817221e-05,6.70593610772e-05,6.79298402735e-05,6.87897666271e-05,6.96390887911e-05,7.04777567561e-05,7.13057218505e-05,7.21229367412e-05,7.29293554334e-05,7.37249332706e-05,7.45096269346e-05,7.52833944452e-05,7.60461951597e-05,7.67979897723e-05,7.75387403133e-05,7.82684101486e-05,7.89869639781e-05,7.96943678352e-05,8.03905890849e-05,8.10755964228e-05,8.17493598731e-05,8.24118507875e-05,8.30630418427e-05,8.37029070389e-05,8.43314216972e-05,8.49485624577e-05,8.55543072771e-05,8.61486354258e-05,8.67315274858e-05,8.73029653472e-05,8.78629322057e-05,8.84114125596e-05,8.89483922063e-05,8.94738582392e-05,8.99877990439e-05,9.04902042952e-05,9.09810649527e-05,9.14603732573e-05,9.19281227275e-05,9.23843081545e-05,9.28289255989e-05,9.32619723856e-05,9.36834470999e-05,9.40933495824e-05,9.44916809247e-05,9.48784434642e-05,9.52536407797e-05,9.56172776856e-05,9.59693602273e-05,9.63098956756e-05,9.66388925212e-05,9.69563604697e-05,9.72623104352e-05,9.75567545352e-05,9.78397060842e-05,9.81111795881e-05,9.8371190738e-05,9.8619756404e-05,9.88568946288e-05,9.90826246214e-05,9.92969667505e-05,9.94999425381e-05,9.96915746525e-05,9.98718869016e-05,0.000100040904226,0.000100198652692,0.000100345159485,0.0001004804529,0.000100604562339,0.000100717518297,0.000100819352361,0.000100910097198,0.000100989786549,0.000101058455223,0.000101116139085,0.00010116287505,0.000101198701078,0.000101223656159,0.000101237780314,0.000101241114578,0.000101233700996,0.000101215582614,0.000101186803471,0.000101147408589,0.000101097443965,0.000101036956563,0.000100965994304,0.000100884606058,0.000100792841634,0.000100690751772,0.000100578388133,0.000100455803291,0.000100323050722,0.000100180184797,0.00010002726077,9.98643347719e-05,9.96914637967e-05,9.95087056958e-05,9.93161191665e-05,9.91137637426e-05,9.89016997849e-05,9.86799884711e-05,9.84486917862e-05,9.82078725127e-05,9.79575942205e-05,9.76979212568e-05,9.74289187362e-05,9.71506525307e-05,9.68631892594e-05,9.65665962786e-05,9.62609416709e-05,9.5946294236e-05,9.56227234795e-05,9.52902996029e-05,9.49490934932e-05,9.45991767127e-05,9.42406214879e-05,9.38735007e-05,9.34978878733e-05,9.31138571655e-05,9.27214833569e-05,9.23208418392e-05,9.1912008606e-05,9.14950602409e-05,9.10700739079e-05,9.06371273399e-05,9.01962988283e-05,8.97476672122e-05,8.92913118678e-05,8.88273126972e-05,8.8355750118e-05,8.78767050521e-05,8.73902589152e-05,8.68964936059e-05,8.63954914944e-05,8.58873354123e-05,8.5372108641e-05,8.48498949014e-05,8.43207783428e-05,8.37848435316e-05,8.32421754412e-05,8.26928594402e-05,8.2136981282e-05,8.15746270938e-05,8.10058833656e-05,8.04308369392e-05,7.98495749977e-05,7.92621850538e-05,7.86687549397e-05,7.80693727959e-05,7.74641270598e-05,7.68531064558e-05,7.62363999835e-05,7.56140969074e-05,7.49862867458e-05,7.435305926e-05,7.37145044435e-05,7.30707125112e-05,7.24217738884e-05,7.17677792004e-05,7.11088192613e-05,7.04449850639e-05,6.9776367768e-05,6.91030586907e-05,6.84251492951e-05,6.774273118e-05,6.70558960689e-05,6.63647357999e-05,6.56693423147e-05,6.49698076481e-05,6.42662239179e-05,6.3558683314e-05,6.28472780881e-05,6.21321005432e-05,6.14132430233e-05,6.06907979033e-05,5.99648575782e-05,5.92355144531e-05,5.85028609331e-05,5.77669894127e-05,5.70279922662e-05,5.62859618372e-05,5.55409904285e-05,5.47931702923e-05,5.40425936203e-05,5.32893525333e-05,5.25335390717e-05,5.17752451857e-05,5.10145627253e-05,5.02515834305e-05,4.94863989219e-05,4.87191006908e-05,4.79497800899e-05,4.71785283232e-05,4.64054364372e-05,4.56305953109e-05,4.4854095647e-05,4.4076027962e-05,4.32964825771e-05,4.25155496094e-05,4.17333189622e-05,4.09498803162e-05,4.01653231205e-05,3.93797365835e-05,3.85932096642e-05,3.78058310628e-05,3.70176892129e-05,3.62288722718e-05,3.54394681125e-05,3.46495643147e-05,3.38592481567e-05,3.30686066065e-05,3.22777263139e-05,3.14866936017e-05,3.06955944577e-05,2.99045145266e-05,2.91135391017e-05,2.83227531171e-05,2.75322411394e-05,2.67420873602e-05,2.59523755879e-05,2.51631892404e-05,2.4374611337e-05,2.35867244909e-05,2.27996109019e-05,2.20133523489e-05,2.12280301821e-05,2.04437253164e-05,1.96605182238e-05,1.88784889261e-05,1.80977169881e-05,1.73182815107e-05,1.65402611239e-05,1.57637339797e-05,1.49887777458e-05,1.42154695986e-05,1.34438862171e-05,1.26741037756e-05,1.19061979381e-05,1.11402438516e-05,1.03763161398e-05,9.61448889705e-06,8.85483568221e-06,8.09742951276e-06,7.34234285878e-06,6.58964763707e-06,5.83941520566e-06,5.09171635783e-06,4.34662131685e-06,3.60419973012e-06,2.8645206642e-06,2.12765259927e-06,1.39366342377e-06,6.62620429566e-07,-6.54096933074e-08,-7.90360861506e-07,-1.51216760337e-06,-2.23076506356e-06,-2.94608900791e-06,-3.65807582789e-06,-4.36666254515e-06,-5.07178681622e-06,-5.77338693633e-06,-6.47140184419e-06,-7.16577112588e-06,-7.85643501888e-06,-8.54333441626e-06,-9.22641087045e-06,-9.90560659703e-06,-1.05808644785e-05,-1.12521280679e-05,-1.19193415922e-05,-1.25824499563e-05,-1.32413987453e-05,-1.38961342291e-05,-1.45466033645e-05,-1.51927537988e-05,-1.58345338729e-05,-1.64718926235e-05,-1.71047797869e-05,-1.77331458011e-05,-1.83569418086e-05,-1.89761196587e-05,-1.95906319106e-05,-2.02004318349e-05,-2.08054734166e-05,-2.14057113569e-05,-2.20011010755e-05,-2.25915987126e-05,-2.31771611303e-05,-2.37577459154e-05,-2.43333113802e-05,-2.49038165649e-05,-2.54692212385e-05,-2.60294859007e-05,-2.65845717833e-05,-2.71344408513e-05,-2.7679055804e-05,-2.82183800766e-05,-2.87523778407e-05,-2.92810140056e-05,-2.98042542192e-05,-3.03220648681e-05,-3.08344130794e-05,-3.13412667203e-05,-3.18425943993e-05,-3.2338365466e-05,-3.28285500121e-05,-3.33131188711e-05,-3.37920436189e-05,-3.42652965737e-05,-3.47328507957e-05,-3.51946800877e-05,-3.56507589943e-05,-3.6101062802e-05,-3.65455675388e-05,-3.69842499736e-05,-3.74170876162e-05,-3.7844058716e-05,-3.82651422619e-05,-3.86803179814e-05,-3.90895663399e-05,-3.94928685392e-05,-3.98902065176e-05,-4.02815629478e-05,-4.06669212363e-05,-4.1046265522e-05,-4.14195806752e-05,-4.17868522957e-05,-4.21480667119e-05,-4.25032109788e-05,-4.28522728768e-05,-4.31952409097e-05,-4.35321043033e-05,-4.38628530031e-05,-4.41874776728e-05,-4.45059696921e-05,-4.48183211548e-05,-4.51245248667e-05,-4.54245743431e-05,-4.57184638068e-05,-4.60061881859e-05,-4.62877431109e-05,-4.65631249128e-05,-4.68323306202e-05,-4.70953579567e-05,-4.73522053382e-05,-4.76028718707e-05,-4.78473573464e-05,-4.80856622418e-05,-4.83177877143e-05,-4.85437355992e-05,-4.87635084069e-05,-4.89771093193e-05,-4.9184542187e-05,-4.93858115257e-05,-4.95809225133e-05,-4.9769880986e-05,-4.99526934352e-05,-5.01293670038e-05,-5.02999094829e-05,-5.04643293078e-05,-5.06226355544e-05,-5.07748379358e-05,-5.0920946798e-05,-5.10609731164e-05,-5.11949284916e-05,-5.13228251457e-05,-5.14446759182e-05,-5.15604942616e-05,-5.1670294238e-05,-5.17740905139e-05,-5.1871898357e-05,-5.19637336311e-05,-5.20496127924e-05,-5.21295528844e-05,-5.22035715342e-05,-5.22716869477e-05,-5.23339179047e-05,-5.23902837552e-05,-5.24408044139e-05,-5.24855003559e-05,-5.25243926122e-05,-5.25575027645e-05,-5.25848529408e-05,-5.26064658102e-05,-5.26223645784e-05,-5.26325729825e-05,-5.26371152861e-05,-5.26360162743e-05,-5.26293012488e-05,-5.26169960225e-05,-5.25991269146e-05,-5.25757207458e-05,-5.25468048323e-05,-5.25124069812e-05,-5.24725554851e-05,-5.24272791166e-05,-5.23766071234e-05,-5.23205692226e-05,-5.22591955954e-05,-5.21925168817e-05,-5.21205641746e-05,-5.20433690152e-05,-5.19609633866e-05,-5.18733797088e-05,-5.17806508331e-05,-5.16828100362e-05,-5.15798910151e-05,-5.14719278808e-05,-5.13589551533e-05,-5.12410077556e-05,-5.11181210081e-05,-5.09903306226e-05,-5.08576726972e-05,-5.07201837098e-05,-5.05779005127e-05,-5.04308603269e-05,-5.0279100736e-05,-5.01226596806e-05,-4.99615754523e-05,-4.9795886688e-05,-4.96256323637e-05,-4.94508517892e-05,-4.92715846013e-05,-4.90878707591e-05,-4.88997505366e-05,-4.87072645182e-05,-4.85104535917e-05,-4.8309358943e-05,-4.81040220496e-05,-4.7894484675e-05,-4.76807888627e-05,-4.746297693e-05,-4.72410914623e-05,-4.70151753066e-05,-4.67852715662e-05,-4.65514235939e-05,-4.63136749869e-05,-4.60720695799e-05,-4.58266514396e-05,-4.55774648585e-05,-4.53245543491e-05,-4.50679646377e-05,-4.48077406582e-05,-4.45439275466e-05,-4.42765706345e-05,-4.40057154435e-05,-4.37314076787e-05,-4.34536932233e-05,-4.31726181321e-05,-4.28882286258e-05,-4.26005710851e-05,-4.23096920442e-05,-4.20156381857e-05,-4.17184563338e-05,-4.14181934488e-05,-4.11148966213e-05,-4.08086130657e-05,-4.0499390115e-05,-4.01872752144e-05,-3.98723159155e-05,-3.95545598707e-05,-3.92340548269e-05,-3.89108486201e-05,-3.85849891694e-05,-3.82565244709e-05,-3.79255025923e-05,-3.7591971667e-05,-3.72559798883e-05,-3.69175755037e-05,-3.6576806809e-05,-3.62337221431e-05,-3.58883698814e-05,-3.55407984312e-05,-3.51910562253e-05,-3.48391917167e-05,-3.44852533728e-05,-3.41292896701e-05,-3.37713490886e-05,-3.34114801058e-05,-3.30497311918e-05,-3.26861508036e-05,-3.23207873797e-05,-3.19536893343e-05,-3.15849050525e-05,-3.12144828844e-05,-3.08424711401e-05,-3.04689180844e-05,-3.0093871931e-05,-2.9717380838e-05,-2.9339492902e-05,-2.89602561534e-05,-2.85797185507e-05,-2.8197927976e-05,-2.78149322294e-05,-2.74307790241e-05,-2.70455159813e-05,-2.66591906255e-05,-2.62718503788e-05,-2.58835425567e-05,-2.5494314363e-05,-2.51042128847e-05,-2.47132850872e-05,-2.43215778098e-05,-2.39291377606e-05,-2.3536011512e-05,-2.31422454957e-05,-2.27478859984e-05,-2.23529791572e-05,-2.19575709544e-05,-2.15617072139e-05,-2.11654335958e-05,-2.07687955926e-05,-2.03718385244e-05,-1.99746075346e-05,-1.95771475857e-05,-1.91795034548e-05,-1.87817197293e-05,-1.83838408031e-05,-1.79859108718e-05,-1.7587973929e-05,-1.71900737621e-05,-1.6792253948e-05,-1.63945578496e-05,-1.59970286114e-05,-1.55997091557e-05,-1.52026421785e-05,-1.48058701465e-05,-1.44094352919e-05,-1.401337961e-05,-1.36177448547e-05,-1.32225725351e-05,-1.28279039118e-05,-1.24337799935e-05,-1.20402415333e-05,-1.16473290251e-05,-1.12550827006e-05,-1.08635425254e-05,-1.0472748196e-05,-1.00827391366e-05,-9.69355449522e-06,-9.30523314137e-06,-8.91781366214e-06,-8.53133435958e-06,-8.14583324746e-06,-7.76134804807e-06,-7.37791618979e-06,-6.99557480345e-06,-6.61436072012e-06,-6.23431046789e-06,-5.85546026918e-06,-5.47784603811e-06,-5.10150337773e-06,-4.72646757742e-06,-4.35277361027e-06,-3.9804561307e-06,-3.60954947168e-06,-3.24008764267e-06,-2.87210432689e-06,-2.5056328792e-06,-2.1407063238e-06,-1.77735735184e-06,-1.41561831938e-06,-1.05552124523e-06,-6.9709780874e-07,-3.40379347981e-07,1.46031424663e-08,3.67819013401e-07,7.19237962734e-07,1.06883003761e-06,1.41656563589e-06,1.76241550822e-06,2.10635075946e-06,2.44834285047e-06,2.78836359967e-06,3.12638518457e-06,3.46238014339e-06,3.79632137625e-06,4.12818214688e-06,4.45793608374e-06,4.7855571815e-06,5.11101980205e-06,5.43429867601e-06,5.75536890365e-06,6.07420595612e-06,6.39078567648e-06,6.70508428061e-06,7.01707835843e-06,7.32674487446e-06,7.63406116908e-06,7.93900495891e-06,8.24155433802e-06,8.54168777837e-06,8.83938413046e-06,9.13462262424e-06,9.4273828693e-06,9.71764485581e-06,1.00053889546e-05,1.0290595918e-05,1.05732468799e-05,1.08533233561e-05,1.11308072451e-05,1.14056808276e-05,1.16779267673e-05,1.19475281108e-05,1.22144682877e-05,1.24787311108e-05,1.2740300776e-05,1.29991618623e-05,1.32552993319e-05,1.35086985298e-05,1.37593451838e-05,1.40072254044e-05,1.42523256843e-05,1.44946328982e-05,1.47341343029e-05,1.4970817536e-05,1.52046706165e-05,1.54356819435e-05,1.56638402963e-05,1.58891348334e-05,1.61115550923e-05,1.63310909886e-05,1.65477328155e-05,1.67614712427e-05,1.69722973164e-05,1.71802024576e-05,1.7385178462e-05,1.75872174988e-05,1.77863121096e-05,1.79824552079e-05,1.81756400778e-05,1.83658603729e-05,1.85531101154e-05,1.87373836951e-05,1.89186758679e-05,1.90969817549e-05,1.92722968408e-05,1.94446169735e-05,1.96139383616e-05,1.9780257574e-05,1.9943571538e-05,2.01038775384e-05,2.02611732154e-05,2.04154565638e-05,2.05667259307e-05,2.0714980015e-05,2.08602178646e-05,2.1002438876e-05,2.11416427915e-05,2.12778296985e-05,2.1411000027e-05,2.15411545487e-05,2.16682943742e-05,2.17924209519e-05,2.19135360662e-05,2.2031641835e-05,2.21467407085e-05,2.22588354669e-05,2.23679292183e-05,2.24740253971e-05,2.25771277617e-05,2.26772403925e-05,2.27743676899e-05,2.28685143721e-05,2.29596854731e-05,2.304788634e-05,2.31331226319e-05,2.32154003164e-05,2.32947256686e-05,2.33711052675e-05,2.34445459951e-05,2.3515055033e-05,2.35826398605e-05,2.36473082524e-05,2.3709068276e-05,2.37679282897e-05,2.38238969394e-05,2.38769831567e-05,2.39271961566e-05,2.39745454344e-05,2.40190407637e-05,2.40606921934e-05,2.40995100457e-05,2.41355049129e-05,2.41686876554e-05,2.41990693982e-05,2.42266615296e-05,2.42514756971e-05,2.42735238058e-05,2.4292818015e-05,2.43093707361e-05,2.43231946291e-05,2.43343026007e-05,2.4342707801e-05,2.43484236208e-05,2.43514636889e-05,2.43518418693e-05,2.43495722582e-05,2.43446691815e-05,2.43371471917e-05,2.43270210649e-05,2.43143057982e-05,2.42990166071e-05,2.42811689215e-05,2.42607783842e-05,2.42378608469e-05,2.42124323679e-05,2.41845092086e-05,2.41541078313e-05,2.41212448954e-05,2.40859372551e-05,2.40482019562e-05,2.40080562327e-05,2.39655175047e-05,2.39206033744e-05,2.3873331624e-05,2.38237202119e-05,2.37717872701e-05,2.37175511013e-05,2.36610301756e-05,2.36022431273e-05,2.35412087523e-05,2.3477946005e-05,2.34124739947e-05,2.33448119833e-05,2.32749793816e-05,2.32029957467e-05,2.31288807789e-05,2.30526543181e-05,2.29743363414e-05,2.28939469599e-05,2.28115064152e-05,2.27270350768e-05,2.26405534388e-05,2.25520821171e-05,2.24616418459e-05,2.23692534749e-05,2.22749379664e-05,2.21787163918e-05,2.2080609929e-05,2.19806398591e-05,2.18788275633e-05,2.17751945199e-05,2.16697623014e-05,2.15625525714e-05,2.14535870813e-05,2.13428876676e-05,2.12304762488e-05,2.11163748222e-05,2.1000605461e-05,2.08831903115e-05,2.07641515898e-05,2.06435115787e-05,2.05212926251e-05,2.0397517137e-05,2.02722075799e-05,2.01453864746e-05,2.0017076394e-05,1.98872999598e-05,1.975607984e-05,1.96234387458e-05,1.94893994287e-05,1.93539846776e-05,1.92172173158e-05,1.90791201982e-05,1.89397162084e-05,1.8799028256e-05,1.86570792733e-05,1.85138922131e-05,1.83694900451e-05,1.82238957538e-05,1.80771323353e-05,1.79292227947e-05,1.77801901428e-05,1.76300573943e-05,1.74788475641e-05,1.73265836652e-05,1.71732887054e-05,1.70189856853e-05,1.68636975949e-05,1.67074474116e-05,1.65502580968e-05,1.63921525939e-05,1.62331538252e-05,1.60732846898e-05,1.59125680602e-05,1.57510267806e-05,1.55886836637e-05,1.54255614887e-05,1.5261682998e-05,1.50970708955e-05,1.49317478436e-05,1.47657364608e-05,1.45990593194e-05,1.4431738943e-05,1.42637978038e-05,1.40952583207e-05,1.39261428566e-05,1.37564737159e-05,1.35862731425e-05,1.34155633173e-05,1.32443663558e-05,1.30727043059e-05,1.29005991459e-05,1.27280727817e-05,1.2555147045e-05,1.2381843691e-05,1.2208184396e-05,1.20341907556e-05,1.18598842825e-05,1.16852864039e-05,1.15104184601e-05,1.13353017018e-05,1.11599572886e-05,1.09844062864e-05,1.0808669666e-05,1.06327683004e-05,1.04567229638e-05,1.02805543284e-05,1.01042829636e-05,9.92792933371e-06,9.75151379575e-06,9.57505659803e-06,9.39857787813e-06,9.22209766117e-06,9.04563585798e-06,8.86921226326e-06,8.69284655403e-06,8.51655828784e-06,8.34036690095e-06,8.16429170685e-06,7.98835189456e-06,7.81256652698e-06,7.63695453929e-06,7.46153473748e-06,7.28632579663e-06,7.11134625965e-06,6.93661453548e-06,6.76214889786e-06,6.58796748375e-06,6.41408829204e-06,6.24052918192e-06,6.06730787179e-06,5.89444193772e-06,5.72194881215e-06,5.54984578272e-06,5.37814999081e-06,5.20687843044e-06,5.03604794693e-06,4.86567523586e-06,4.69577684172e-06,4.52636915681e-06,4.35746842027e-06,4.18909071674e-06,4.0212519755e-06,3.85396796918e-06,3.68725431304e-06,3.52112646372e-06,3.35559971838e-06,3.19068921375e-06,3.02640992509e-06,2.86277666557e-06,2.69980408502e-06,2.53750666938e-06,2.37589873969e-06,2.21499445152e-06,2.0548077939e-06,1.89535258873e-06,1.73664249009e-06,1.57869098349e-06,1.42151138516e-06,1.26511684146e-06,1.10952032818e-06,9.5473465007e-07,8.00772440128e-07,6.47646159089e-07,4.95368094861e-07,3.43950362252e-07,1.93404902071e-07,4.37434810679e-08,-1.05022308744e-07,-2.52881050382e-07,-3.99821502279e-07,-5.45832598739e-07,-6.90903450141e-07,-8.35023343312e-07,-9.78181741883e-07,-1.1203682864e-06,-1.26157279473e-06,-1.40178526218e-06,-1.54099586162e-06,-1.67919494393e-06,-1.81637303776e-06,-1.95252085005e-06,-2.08762926575e-06,-2.22168934831e-06,-2.35469233927e-06,-2.48662965877e-06,-2.6174929052e-06,-2.74727385533e-06,-2.87596446435e-06,-3.00355686566e-06,-3.13004337084e-06,-3.25541646975e-06,-3.37966882996e-06,-3.5027932972e-06,-3.62478289464e-06,-3.74563082307e-06,-3.86533046057e-06,-3.98387536219e-06,-4.10125925993e-06,-4.21747606227e-06,-4.33251985395e-06,-4.44638489566e-06,-4.55906562375e-06,-4.67055664983e-06,-4.78085276033e-06,-4.88994891631e-06,-4.99784025288e-06,-5.10452207878e-06,-5.20998987609e-06,-5.31423929948e-06,-5.41726617607e-06,-5.51906650458e-06,-5.61963645509e-06,-5.71897236832e-06,-5.81707075514e-06,-5.91392829594e-06,-6.00954184017e-06,-6.10390840542e-06,-6.19702517731e-06,-6.28888950809e-06,-6.3794989169e-06,-6.46885108808e-06,-6.55694387139e-06,-6.64377528059e-06,-6.72934349316e-06,-6.81364684926e-06,-6.89668385118e-06,-6.97845316238e-06,-7.05895360676e-06,-7.13818416791e-06,-7.21614398816e-06,-7.2928323678e-06,-7.36824876423e-06,-7.44239279102e-06,-7.51526421709e-06,-7.58686296575e-06,-7.65718911385e-06,-7.72624289073e-06,-7.79402467737e-06,-7.86053500541e-06,-7.92577455612e-06,-7.98974415955e-06,-8.05244479326e-06,-8.11387758165e-06,-8.17404379462e-06,-8.23294484679e-06,-8.29058229617e-06,-8.34695784344e-06,-8.40207333047e-06,-8.45593073964e-06,-8.50853219234e-06,-8.55987994829e-06,-8.60997640398e-06,-8.65882409185e-06,-8.70642567906e-06,-8.7527839662e-06,-8.79790188641e-06,-8.84178250384e-06,-8.88442901284e-06,-8.92584473646e-06,-8.96603312544e-06,-9.00499775691e-06,-9.04274233314e-06,-9.07927068044e-06,-9.11458674773e-06,-9.14869460554e-06,-9.18159844445e-06,-9.2133025741e-06,-9.24381142171e-06,-9.27312953101e-06,-9.30126156073e-06,-9.32821228348e-06,-9.35398658429e-06,-9.37858945952e-06,-9.40202601533e-06,-9.42430146642e-06,-9.44542113483e-06,-9.46539044841e-06,-9.48421493965e-06,-9.50190024421e-06,-9.51845209965e-06,-9.53387634401e-06,-9.54817891455e-06,-9.56136584629e-06,-9.57344327067e-06,-9.58441741417e-06,-9.59429459702e-06,-9.60308123164e-06,-9.61078382143e-06,-9.61740895925e-06,-9.62296332623e-06,-9.62745369003e-06,-9.63088690382e-06,-9.63326990458e-06,-9.63460971198e-06,-9.63491342663e-06,-9.63418822904e-06,-9.63244137788e-06,-9.62968020886e-06,-9.62591213308e-06,-9.62114463581e-06,-9.61538527488e-06,-9.60864167946e-06,-9.60092154849e-06,-9.5922326494e-06,-9.58258281651e-06,-9.57197994984e-06,-9.56043201344e-06,-9.54794703428e-06,-9.53453310054e-06,-9.5201983603e-06,-9.50495102024e-06,-9.48879934402e-06,-9.47175165108e-06,-9.45381631502e-06,-9.43500176235e-06,-9.415316471e-06,-9.39476896897e-06,-9.37336783282e-06,-9.35112168641e-06,-9.32803919941e-06,-9.30412908587e-06,-9.27940010293e-06,-9.25386104935e-06,-9.22752076417e-06,-9.20038812525e-06,-9.17247204796e-06,-9.14378148376e-06,-9.11432541888e-06,-9.0841128729e-06,-9.0531528973e-06,-9.02145457434e-06,-8.98902701538e-06,-8.95587935988e-06,-8.92202077368e-06,-8.88746044799e-06,-8.85220759773e-06,-8.81627146061e-06,-8.77966129526e-06,-8.74238638043e-06,-8.70445601329e-06,-8.6658795084e-06,-8.62666619618e-06,-8.58682542164e-06,-8.54636654329e-06,-8.5052989316e-06,-8.46363196783e-06,-8.42137504281e-06,-8.37853755541e-06,-8.33512891178e-06,-8.29115852348e-06,-8.2466358067e-06,-8.20157018083e-06,-8.15597106721e-06,-8.10984788795e-06,-8.06321006471e-06,-8.0160670175e-06,-7.96842816339e-06,-7.92030291541e-06,-7.87170068133e-06,-7.82263086248e-06,-7.77310285256e-06,-7.72312603648e-06,-7.67270978922e-06,-7.62186347472e-06,-7.57059644463e-06,-7.51891803727e-06,-7.46683757647e-06,-7.41436437056e-06,-7.36150771104e-06,-7.30827687175e-06,-7.25468110755e-06,-7.20072965352e-06,-7.1464317235e-06,-7.09179650951e-06,-7.03683318024e-06,-6.98155088038e-06,-6.92595872933e-06,-6.87006582036e-06,-6.81388121954e-06,-6.7574139647e-06,-6.70067306447e-06,-6.64366749737e-06,-6.58640621067e-06,-6.52889811965e-06,-6.47115210651e-06,-6.4131770195e-06,-6.35498167184e-06,-6.29657484113e-06,-6.237965268e-06,-6.17916165572e-06,-6.12017266881e-06,-6.06100693254e-06,-6.00167303197e-06,-5.94217951096e-06,-5.88253487147e-06,-5.82274757273e-06,-5.76282603036e-06,-5.70277861561e-06,-5.64261365448e-06,-5.58233942705e-06,-5.52196416665e-06,-5.46149605911e-06,-5.40094324192e-06,-5.34031380364e-06,-5.27961578311e-06,-5.21885716863e-06,-5.15804589743e-06,-5.09718985483e-06,-5.03629687368e-06,-4.9753747335e-06,-4.91443116009e-06,-4.8534738246e-06,-4.79251034313e-06,-4.73154827591e-06,-4.67059512682e-06,-4.60965834268e-06,-4.54874531286e-06,-4.48786336838e-06,-4.42701978162e-06,-4.3662217656e-06,-4.30547647364e-06,-4.24479099848e-06,-4.18417237209e-06,-4.12362756503e-06,-4.06316348587e-06,-4.00278698091e-06,-3.9425048334e-06,-3.88232376347e-06,-3.82225042731e-06,-3.76229141693e-06,-3.7024532597e-06,-3.64274241784e-06,-3.58316528822e-06,-3.52372820176e-06,-3.46443742306e-06,-3.40529915024e-06,-3.34631951428e-06,-3.28750457894e-06,-3.22886034028e-06,-3.17039272625e-06,-3.11210759665e-06,-3.05401074261e-06,-2.99610788624e-06,-2.93840468063e-06,-2.88090670932e-06,-2.82361948615e-06,-2.76654845501e-06,-2.70969898955e-06,-2.65307639308e-06,-2.59668589824e-06,-2.54053266677e-06,-2.48462178951e-06,-2.42895828599e-06,-2.37354710443e-06,-2.31839312147e-06,-2.2635011421e-06,-2.2088758995e-06,-2.15452205486e-06,-2.10044419744e-06,-2.04664684413e-06,-1.99313443981e-06,-1.93991135678e-06,-1.88698189516e-06,-1.83435028244e-06,-1.78202067366e-06,-1.72999715124e-06,-1.6782837251e-06,-1.62688433242e-06,-1.57580283791e-06,-1.52504303344e-06,-1.47460863854e-06,-1.42450329983e-06,-1.37473059168e-06,-1.32529401567e-06,-1.27619700102e-06,-1.22744290453e-06,-1.17903501065e-06,-1.13097653151e-06,-1.0832706071e-06,-1.03592030526e-06,-9.88928621941e-07,-9.42298481145e-07,-8.96032735172e-07,-8.50134164695e-07,-8.0460547888e-07,-7.59449315724e-07,-7.14668241861e-07,-6.7026475314e-07,-6.26241274448e-07,-5.82600160141e-07,-5.39343694164e-07,-4.96474090158e-07,-4.53993491829e-07,-4.11903973119e-07,-3.70207538344e-07,-3.28906122513e-07,-2.88001591622e-07,-2.47495742801e-07,-2.07390304595e-07,-1.67686937341e-07,-1.28387233288e-07,-8.94927169901e-08,-5.10048455976e-08,-1.29250090502e-08,2.47454694749e-08,6.20053333229e-08,9.88533921263e-08,1.35288521163e-07,1.71309661517e-07,2.06915819216e-07,2.42106065288e-07,2.76879535109e-07,3.11235428367e-07,3.45173008194e-07,3.78691601418e-07,4.1179059763e-07,4.44469449125e-07,4.76727670398e-07,5.08564837664e-07,5.39980588658e-07,5.70974622047e-07,6.01546697033e-07,6.3169663299e-07,6.61424309038e-07,6.90729663513e-07,7.19612693596e-07,7.48073454962e-07,7.76112061026e-07,8.0372868293e-07,8.30923548599e-07,8.57696942713e-07,8.8404920593e-07,9.09980734469e-07,9.35491979878e-07,9.60583448067e-07,9.85255699392e-07,1.00950934759e-06,1.03334505982e-06,1.05676355573e-06,1.07976560714e-06,1.10235203756e-06,1.1245237217e-06,1.14628158464e-06,1.16762660183e-06,1.18855979813e-06,1.20908224748e-06,1.2291950723e-06,1.24889944299e-06,1.26819657745e-06,1.28708774041e-06,1.30557424288e-06,1.3236574418e-06,1.34133873934e-06,1.35861958231e-06,1.37550146165e-06,1.39198591204e-06,1.40807451098e-06,1.42376887857e-06,1.4390706768e-06,1.45398160896e-06,1.46850341911e-06,1.48263789152e-06,1.49638685013e-06,1.50975215784e-06,1.52273571611e-06,1.53533946419e-06,1.54756537887e-06,1.55941547339e-06,1.57089179739e-06,1.58199643597e-06,1.59273150932e-06,1.60309917191e-06,1.61310161216e-06,1.62274105165e-06,1.63201974473e-06,1.64093997768e-06,1.64950406836e-06,1.65771436549e-06,1.66557324811e-06,1.673083125e-06,1.68024643401e-06,1.68706564161e-06,1.6935432422e-06,1.69968175748e-06,1.70548373604e-06,1.71095175258e-06,1.71608840748e-06,1.720896326e-06,1.72537815804e-06,1.72953657713e-06,1.7333742802e-06,1.73689398681e-06,1.74009843861e-06,1.7429903988e-06,1.7455726514e-06,1.74784800097e-06,1.7498192716e-06,1.75148930677e-06,1.75286096852e-06,1.75393713684e-06,1.75472070933e-06,1.75521460037e-06,1.75542174071e-06,1.75534507686e-06,1.75498757051e-06,1.754352198e-06,1.75344194962e-06,1.75225982936e-06,1.75080885393e-06,1.74909205259e-06,1.74711246632e-06,1.74487314748e-06,1.74237715902e-06,1.73962757422e-06,1.73662747583e-06,1.73337995586e-06,1.72988811473e-06,1.72615506099e-06,1.72218391054e-06,1.71797778632e-06,1.71353981766e-06,1.70887313982e-06,1.70398089332e-06,1.69886622366e-06,1.69353228055e-06,1.68798221766e-06,1.68221919178e-06,1.6762463627e-06,1.67006689231e-06,1.66368394445e-06,1.65710068419e-06,1.65032027737e-06,1.64334589024e-06,1.63618068877e-06,1.62882783835e-06,1.62129050314e-06,1.61357184584e-06,1.60567502691e-06,1.59760320432e-06,1.58935953308e-06,1.58094716458e-06,1.57236924643e-06,1.56362892179e-06,1.55472932889e-06,1.54567360088e-06,1.53646486502e-06,1.52710624245e-06,1.51760084781e-06,1.50795178861e-06,1.49816216497e-06,1.4882350692e-06,1.47817358519e-06,1.46798078836e-06,1.4576597448e-06,1.44721351134e-06,1.43664513473e-06,1.42595765156e-06,1.41515408768e-06,1.40423745793e-06,1.39321076569e-06,1.38207700254e-06,1.37083914792e-06,1.35950016858e-06,1.34806301863e-06,1.33653063868e-06,1.3249059558e-06,1.31319188315e-06,1.30139131956e-06,1.28950714922e-06,1.27754224135e-06,1.26549944991e-06,1.25338161315e-06,1.24119155351e-06,1.22893207713e-06,1.21660597349e-06,1.20421601542e-06,1.19176495842e-06,1.17925554063e-06,1.16669048236e-06,1.15407248605e-06,1.14140423572e-06,5.05675289407e-05',
    'CSET columnconfig = 28',
    'CSET data_buffer_type = Automatic',
    'CSET data_fractional_bits = 0',
    'CSET data_sign = Unsigned',
    'CSET data_width = 16',
    'CSET decimation_rate = 200',
    'CSET displayreloadorder = false',
    'CSET filter_architecture = Systolic_Multiply_Accumulate',
    'CSET filter_selection = 1',
    'CSET filter_type = Decimation',
    'CSET gui_behaviour = Coregen',
    'CSET hardwareoversamplingrate = 1',
    'CSET has_ce = true',
    'CSET has_data_valid = false',
    'CSET has_nd = true',
    'CSET has_sclr = false',
    'CSET input_buffer_type = Automatic',
    'CSET inter_column_pipe_length = 4',
    'CSET interpolation_rate = 1',
    'CSET multi_column_support = Disabled',
    'CSET number_channels = 1',
    'CSET number_paths = 1',
    'CSET optimization_goal = Area',
    'CSET output_buffer_type = Automatic',
    'CSET output_rounding_mode = Convergent_Rounding_to_Even',
    'CSET output_width = 16',
    'CSET passband_max = 0.50000000000',
    'CSET passband_min = 0',
    'CSET preference_for_other_storage = Automatic',
    'CSET quantization = Maximize_Dynamic_Range',
    'CSET rate_change_type = Integer',
    'CSET ratespecification = Sample_Period',
    'CSET registered_output = true',
    'CSET sample_frequency = 0.00100000000',
    'CSET sampleperiod = 1',
    'CSET sclr_deterministic = false',
    'CSET stopband_max = 1',
    'CSET stopband_min = 0.50000000000',
    'CSET usechan_in_adv = false',
    'CSET zero_pack_factor = 1',
    'SET device = xc6vsx475t',
    'SET package = ff1759',
    'SET speedgrade = -1',
    'CSET component_name = fr_cmplr_v5_0_46baa3903c43d72d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '049c700d676aa86648b21ffc4b4ff9c1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => ' is
  component fr_cmplr_v5_0_46baa3903c43d72d
    port(
      ce:in std_logic;
      clk:in std_logic;
      din:in std_logic_vector(15 downto 0);
      dout:out std_logic_vector(15 downto 0);
      nd:in std_logic;
      rdy:out std_logic;
      rfd:out std_logic
    );
end component;
signal dout_ps_net: std_logic_vector(15 downto 0) := (others=>\'0\');
signal rdy_ps_net: std_logic := \'0\';
signal rdy_ps_net_captured: std_logic := \'0\';
signal rdy_ps_net_or_captured_net: std_logic := \'0\';
begin
  dout_ps_net_synchronizer : entity work.synth_reg_w_init
    generic map(
        width => 16,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i => dout_ps_net,
        ce => ce_200,
        clr => \'0\',
        clk => clk_200, 
        o => dout
    );
  rdy_ps_net_or_captured_net <= rdy_ps_net or rdy_ps_net_captured;
rdy_ps_net_synchronizer_1 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => rdy_ps_net_or_captured_net,
        ce => ce_200,
        clr => \'0\',
        clk => clk_200, 
        o(0) => rdy
    );
rdy_ps_net_synchronizer_2 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => \'1\',
        ce => rdy_ps_net,
        clr => \'0\',
        clk => clk_200, 
        o(0) => rdy_ps_net_captured
    );
  fr_cmplr_v5_0_46baa3903c43d72d_instance : fr_cmplr_v5_0_46baa3903c43d72d
    port map(
      ce=>ce,
      clk=>clk,
      din=>din,
      dout=>dout_ps_net,
      nd=>ce_logic_1,
      rdy=>rdy_ps_net,
      rfd=>rfd
    );
end ',
      'crippled_entity' => 'is 
  port(
    ce:in std_logic;
    ce_200:in std_logic;
    ce_logic_1:in std_logic;
    clk:in std_logic;
    clk_200:in std_logic;
    clk_logic_1:in std_logic;
    din:in std_logic_vector(15 downto 0);
    dout:out std_logic_vector(15 downto 0);
    rdy:out std_logic;
    rfd:out std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end',
      'entity_name' => 'xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/opt/Xilinx/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272') || 
    croak 'couldn\'t open /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272';
};

if ($@) {
  open(RESULTS, '> /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272') || 
    croak 'couldn\'t open /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/heystek/heystek_thesis/thesis/window_design/sysgen/sysgen/script_results6405373823853813272';
  exit(1);
}

exit(0);
