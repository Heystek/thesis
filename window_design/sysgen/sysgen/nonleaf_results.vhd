library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/adc/conv"

entity conv_entity_52c0a156d0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(7 downto 0)
  );
end conv_entity_52c0a156d0;

architecture structural of conv_entity_52c0a156d0 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(7 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(6 downto 0);
  signal slice_y_net: std_logic;
  signal window_design_adc_user_datai0_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  window_design_adc_user_datai0_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x0;

  concat: entity work.concat_83e473517e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => inverter_op_net,
      in1 => slice1_y_net,
      y => concat_y_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => window_design_adc_user_datai0_net_x0,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 6,
      x_width => 8,
      y_width => 7
    )
    port map (
      x => window_design_adc_user_datai0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/adc"

entity adc_entity_978c1545ab is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    window_design_adc_user_datai0: in std_logic_vector(7 downto 0); 
    window_design_adc_user_datai1: in std_logic_vector(7 downto 0); 
    window_design_adc_user_datai2: in std_logic_vector(7 downto 0); 
    window_design_adc_user_datai3: in std_logic_vector(7 downto 0); 
    window_design_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    window_design_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    i0: out std_logic_vector(7 downto 0); 
    i1: out std_logic_vector(7 downto 0); 
    i2: out std_logic_vector(7 downto 0); 
    i3: out std_logic_vector(7 downto 0); 
    q0: out std_logic_vector(7 downto 0); 
    q2: out std_logic_vector(7 downto 0)
  );
end adc_entity_978c1545ab;

architecture structural of adc_entity_978c1545ab is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai0_net_x1: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai1_net_x1: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai2_net_x1: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai3_net_x1: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq0_net_x1: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq2_net_x1: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  window_design_adc_user_datai0_net_x1 <= window_design_adc_user_datai0;
  window_design_adc_user_datai1_net_x1 <= window_design_adc_user_datai1;
  window_design_adc_user_datai2_net_x1 <= window_design_adc_user_datai2;
  window_design_adc_user_datai3_net_x1 <= window_design_adc_user_datai3;
  window_design_adc_user_dataq0_net_x1 <= window_design_adc_user_dataq0;
  window_design_adc_user_dataq2_net_x1 <= window_design_adc_user_dataq2;
  i0 <= reinterpret_output_port_net_x6;
  i1 <= reinterpret_output_port_net_x7;
  i2 <= reinterpret_output_port_net_x8;
  i3 <= reinterpret_output_port_net_x9;
  q0 <= reinterpret_output_port_net_x10;
  q2 <= reinterpret_output_port_net_x11;

  conv1_36c9dffae9: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_datai1_net_x1,
      out1 => reinterpret_output_port_net_x7
    );

  conv2_3b5abd67f0: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_datai2_net_x1,
      out1 => reinterpret_output_port_net_x8
    );

  conv3_51e9f96cb0: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_datai3_net_x1,
      out1 => reinterpret_output_port_net_x9
    );

  conv4_f011ebb299: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_dataq0_net_x1,
      out1 => reinterpret_output_port_net_x10
    );

  conv6_e151e9c64d: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_dataq2_net_x1,
      out1 => reinterpret_output_port_net_x11
    );

  conv_52c0a156d0: entity work.conv_entity_52c0a156d0
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => window_design_adc_user_datai0_net_x1,
      out1 => reinterpret_output_port_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col1/adder_tree1"

entity adder_tree1_entity_3cfd7215cc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(40 downto 0); 
    din2: in std_logic_vector(40 downto 0); 
    din3: in std_logic_vector(40 downto 0); 
    din4: in std_logic_vector(40 downto 0); 
    dout: out std_logic_vector(42 downto 0)
  );
end adder_tree1_entity_3cfd7215cc;

architecture structural of adder_tree1_entity_3cfd7215cc is
  signal addr1_s_net: std_logic_vector(41 downto 0);
  signal addr2_s_net: std_logic_vector(41 downto 0);
  signal addr3_s_net_x0: std_logic_vector(42 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal mult0_p_net_x3: std_logic_vector(40 downto 0);
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult0_p_net_x5: std_logic_vector(40 downto 0);
  signal mult0_p_net_x6: std_logic_vector(40 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  mult0_p_net_x3 <= din1;
  mult0_p_net_x4 <= din2;
  mult0_p_net_x5 <= din3;
  mult0_p_net_x6 <= din4;
  dout <= addr3_s_net_x0;

  addr1: entity work.addsub_b6a1641fbc
    port map (
      a => mult0_p_net_x3,
      b => mult0_p_net_x4,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      s => addr1_s_net
    );

  addr2: entity work.addsub_b6a1641fbc
    port map (
      a => mult0_p_net_x5,
      b => mult0_p_net_x6,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 42,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 42,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 43,
      core_name0 => "addsb_11_0_f454c284b642f5dc",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 43,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 43
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col1/fir_tap1"

entity fir_tap1_entity_b0f2afd966 is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(15 downto 0); 
    b_out: out std_logic_vector(15 downto 0); 
    imag: out std_logic_vector(40 downto 0); 
    real_x0: out std_logic_vector(40 downto 0)
  );
end fir_tap1_entity_b0f2afd966;

architecture structural of fir_tap1_entity_b0f2afd966 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal delay80_q_net_x0: std_logic_vector(15 downto 0);
  signal delay82_q_net_x0: std_logic_vector(15 downto 0);
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult1_p_net_x4: std_logic_vector(40 downto 0);
  signal register0_q_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(15 downto 0);

begin
  delay82_q_net_x0 <= a;
  delay80_q_net_x0 <= b;
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x4;
  real_x0 <= mult0_p_net_x4;

  constant_x0: entity work.constant_aeacade12d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => delay82_q_net_x0,
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      p => mult0_p_net_x4
    );

  mult1: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => delay80_q_net_x0,
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      p => mult1_p_net_x4
    );

  register0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d => delay82_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d => delay80_q_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col1/fir_tap4"

entity fir_tap4_entity_8f6d18b1c2 is
  port (
    a: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(15 downto 0); 
    b_out: out std_logic_vector(15 downto 0); 
    imag: out std_logic_vector(40 downto 0); 
    real_x0: out std_logic_vector(40 downto 0)
  );
end fir_tap4_entity_8f6d18b1c2;

architecture structural of fir_tap4_entity_8f6d18b1c2 is
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal delay82_q_net_x1: std_logic_vector(15 downto 0);
  signal mult0_p_net_x7: std_logic_vector(40 downto 0);
  signal mult1_p_net_x7: std_logic_vector(40 downto 0);
  signal register0_q_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(15 downto 0);

begin
  delay82_q_net_x1 <= a;
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x7;
  real_x0 <= mult0_p_net_x7;

  constant_x0: entity work.constant_6a1bb6dda6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => delay82_q_net_x1,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      p => mult0_p_net_x7
    );

  mult1: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => delay82_q_net_x1,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      p => mult1_p_net_x7
    );

  register0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => delay82_q_net_x1,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => delay82_q_net_x1,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col1"

entity fir_col1_entity_37de36d5c8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(15 downto 0); 
    imag3: in std_logic_vector(15 downto 0); 
    real1: in std_logic_vector(15 downto 0); 
    real2: in std_logic_vector(15 downto 0); 
    real3: in std_logic_vector(15 downto 0); 
    imag_out1: out std_logic_vector(15 downto 0); 
    imag_out2: out std_logic_vector(15 downto 0); 
    imag_out3: out std_logic_vector(15 downto 0); 
    imag_out4: out std_logic_vector(15 downto 0); 
    imag_sum: out std_logic_vector(42 downto 0); 
    real_out1: out std_logic_vector(15 downto 0); 
    real_out2: out std_logic_vector(15 downto 0); 
    real_out3: out std_logic_vector(15 downto 0); 
    real_out4: out std_logic_vector(15 downto 0); 
    real_sum: out std_logic_vector(42 downto 0)
  );
end fir_col1_entity_37de36d5c8;

architecture structural of fir_col1_entity_37de36d5c8 is
  signal addr3_s_net_x2: std_logic_vector(42 downto 0);
  signal addr3_s_net_x3: std_logic_vector(42 downto 0);
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal delay80_q_net_x2: std_logic_vector(15 downto 0);
  signal delay80_q_net_x3: std_logic_vector(15 downto 0);
  signal delay82_q_net_x2: std_logic_vector(15 downto 0);
  signal delay82_q_net_x3: std_logic_vector(15 downto 0);
  signal delay83_q_net_x1: std_logic_vector(15 downto 0);
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult0_p_net_x5: std_logic_vector(40 downto 0);
  signal mult0_p_net_x6: std_logic_vector(40 downto 0);
  signal mult0_p_net_x7: std_logic_vector(40 downto 0);
  signal mult1_p_net_x4: std_logic_vector(40 downto 0);
  signal mult1_p_net_x5: std_logic_vector(40 downto 0);
  signal mult1_p_net_x6: std_logic_vector(40 downto 0);
  signal mult1_p_net_x7: std_logic_vector(40 downto 0);
  signal register0_q_net_x4: std_logic_vector(15 downto 0);
  signal register0_q_net_x5: std_logic_vector(15 downto 0);
  signal register0_q_net_x6: std_logic_vector(15 downto 0);
  signal register0_q_net_x7: std_logic_vector(15 downto 0);
  signal register1_q_net_x4: std_logic_vector(15 downto 0);
  signal register1_q_net_x5: std_logic_vector(15 downto 0);
  signal register1_q_net_x6: std_logic_vector(15 downto 0);
  signal register1_q_net_x7: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  delay80_q_net_x2 <= imag1;
  delay80_q_net_x3 <= imag3;
  delay82_q_net_x2 <= real1;
  delay83_q_net_x1 <= real2;
  delay82_q_net_x3 <= real3;
  imag_out1 <= register1_q_net_x4;
  imag_out2 <= register1_q_net_x5;
  imag_out3 <= register1_q_net_x6;
  imag_out4 <= register1_q_net_x7;
  imag_sum <= addr3_s_net_x3;
  real_out1 <= register0_q_net_x4;
  real_out2 <= register0_q_net_x5;
  real_out3 <= register0_q_net_x6;
  real_out4 <= register0_q_net_x7;
  real_sum <= addr3_s_net_x2;

  adder_tree1_3cfd7215cc: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      din1 => mult0_p_net_x4,
      din2 => mult0_p_net_x5,
      din3 => mult0_p_net_x6,
      din4 => mult0_p_net_x7,
      dout => addr3_s_net_x2
    );

  adder_tree2_9365f04fbd: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      din1 => mult1_p_net_x4,
      din2 => mult1_p_net_x5,
      din3 => mult1_p_net_x6,
      din4 => mult1_p_net_x7,
      dout => addr3_s_net_x3
    );

  fir_tap1_b0f2afd966: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => delay82_q_net_x2,
      b => delay80_q_net_x2,
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      a_out => register0_q_net_x4,
      b_out => register1_q_net_x4,
      imag => mult1_p_net_x4,
      real_x0 => mult0_p_net_x4
    );

  fir_tap2_3fe9a46e33: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => delay83_q_net_x1,
      b => delay80_q_net_x2,
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      a_out => register0_q_net_x5,
      b_out => register1_q_net_x5,
      imag => mult1_p_net_x5,
      real_x0 => mult0_p_net_x5
    );

  fir_tap3_9c0a7fc0f2: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => delay82_q_net_x3,
      b => delay80_q_net_x3,
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      a_out => register0_q_net_x6,
      b_out => register1_q_net_x6,
      imag => mult1_p_net_x6,
      real_x0 => mult0_p_net_x6
    );

  fir_tap4_8f6d18b1c2: entity work.fir_tap4_entity_8f6d18b1c2
    port map (
      a => delay82_q_net_x3,
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      a_out => register0_q_net_x7,
      b_out => register1_q_net_x7,
      imag => mult1_p_net_x7,
      real_x0 => mult0_p_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col2"

entity fir_col2_entity_8bd558b6ea is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(15 downto 0); 
    imag2: in std_logic_vector(15 downto 0); 
    imag3: in std_logic_vector(15 downto 0); 
    imag4: in std_logic_vector(15 downto 0); 
    real1: in std_logic_vector(15 downto 0); 
    real2: in std_logic_vector(15 downto 0); 
    real3: in std_logic_vector(15 downto 0); 
    real4: in std_logic_vector(15 downto 0); 
    imag_out1: out std_logic_vector(15 downto 0); 
    imag_out2: out std_logic_vector(15 downto 0); 
    imag_out3: out std_logic_vector(15 downto 0); 
    imag_out4: out std_logic_vector(15 downto 0); 
    imag_sum: out std_logic_vector(42 downto 0); 
    real_out1: out std_logic_vector(15 downto 0); 
    real_out2: out std_logic_vector(15 downto 0); 
    real_out3: out std_logic_vector(15 downto 0); 
    real_out4: out std_logic_vector(15 downto 0); 
    real_sum: out std_logic_vector(42 downto 0)
  );
end fir_col2_entity_8bd558b6ea;

architecture structural of fir_col2_entity_8bd558b6ea is
  signal addr3_s_net_x2: std_logic_vector(42 downto 0);
  signal addr3_s_net_x3: std_logic_vector(42 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult0_p_net_x5: std_logic_vector(40 downto 0);
  signal mult0_p_net_x6: std_logic_vector(40 downto 0);
  signal mult0_p_net_x7: std_logic_vector(40 downto 0);
  signal mult1_p_net_x4: std_logic_vector(40 downto 0);
  signal mult1_p_net_x5: std_logic_vector(40 downto 0);
  signal mult1_p_net_x6: std_logic_vector(40 downto 0);
  signal mult1_p_net_x7: std_logic_vector(40 downto 0);
  signal register0_q_net_x12: std_logic_vector(15 downto 0);
  signal register0_q_net_x13: std_logic_vector(15 downto 0);
  signal register0_q_net_x14: std_logic_vector(15 downto 0);
  signal register0_q_net_x15: std_logic_vector(15 downto 0);
  signal register0_q_net_x16: std_logic_vector(15 downto 0);
  signal register0_q_net_x17: std_logic_vector(15 downto 0);
  signal register0_q_net_x18: std_logic_vector(15 downto 0);
  signal register0_q_net_x19: std_logic_vector(15 downto 0);
  signal register1_q_net_x12: std_logic_vector(15 downto 0);
  signal register1_q_net_x13: std_logic_vector(15 downto 0);
  signal register1_q_net_x14: std_logic_vector(15 downto 0);
  signal register1_q_net_x15: std_logic_vector(15 downto 0);
  signal register1_q_net_x16: std_logic_vector(15 downto 0);
  signal register1_q_net_x17: std_logic_vector(15 downto 0);
  signal register1_q_net_x18: std_logic_vector(15 downto 0);
  signal register1_q_net_x19: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  register1_q_net_x12 <= imag1;
  register1_q_net_x13 <= imag2;
  register1_q_net_x14 <= imag3;
  register1_q_net_x15 <= imag4;
  register0_q_net_x12 <= real1;
  register0_q_net_x13 <= real2;
  register0_q_net_x14 <= real3;
  register0_q_net_x15 <= real4;
  imag_out1 <= register1_q_net_x16;
  imag_out2 <= register1_q_net_x17;
  imag_out3 <= register1_q_net_x18;
  imag_out4 <= register1_q_net_x19;
  imag_sum <= addr3_s_net_x3;
  real_out1 <= register0_q_net_x16;
  real_out2 <= register0_q_net_x17;
  real_out3 <= register0_q_net_x18;
  real_out4 <= register0_q_net_x19;
  real_sum <= addr3_s_net_x2;

  adder_tree1_54592766a6: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      din1 => mult0_p_net_x4,
      din2 => mult0_p_net_x5,
      din3 => mult0_p_net_x6,
      din4 => mult0_p_net_x7,
      dout => addr3_s_net_x2
    );

  adder_tree2_f473c8aff6: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      din1 => mult1_p_net_x4,
      din2 => mult1_p_net_x5,
      din3 => mult1_p_net_x6,
      din4 => mult1_p_net_x7,
      dout => addr3_s_net_x3
    );

  fir_tap1_a53f79f184: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => register0_q_net_x12,
      b => register1_q_net_x12,
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x4,
      real_x0 => mult0_p_net_x4
    );

  fir_tap2_d4c0bd9df0: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => register0_q_net_x13,
      b => register1_q_net_x13,
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x5,
      real_x0 => mult0_p_net_x5
    );

  fir_tap3_6adf726567: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => register0_q_net_x14,
      b => register1_q_net_x14,
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x6,
      real_x0 => mult0_p_net_x6
    );

  fir_tap4_863fdcb832: entity work.fir_tap1_entity_b0f2afd966
    port map (
      a => register0_q_net_x15,
      b => register1_q_net_x15,
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      a_out => register0_q_net_x19,
      b_out => register1_q_net_x19,
      imag => mult1_p_net_x7,
      real_x0 => mult0_p_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col4/fir_tap1"

entity fir_tap1_entity_97abae6d2a is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(40 downto 0); 
    real_x0: out std_logic_vector(40 downto 0)
  );
end fir_tap1_entity_97abae6d2a;

architecture structural of fir_tap1_entity_97abae6d2a is
  signal ce_1_sg_x30: std_logic;
  signal clk_1_sg_x30: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult1_p_net_x4: std_logic_vector(40 downto 0);
  signal register0_q_net_x5: std_logic_vector(15 downto 0);
  signal register1_q_net_x5: std_logic_vector(15 downto 0);

begin
  register0_q_net_x5 <= a;
  register1_q_net_x5 <= b;
  ce_1_sg_x30 <= ce_1;
  clk_1_sg_x30 <= clk_1;
  imag <= mult1_p_net_x4;
  real_x0 <= mult0_p_net_x4;

  constant_x0: entity work.constant_aeacade12d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => register0_q_net_x5,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      p => mult0_p_net_x4
    );

  mult1: entity work.mult_d0831ce8f1
    port map (
      a => constant_op_net,
      b => register1_q_net_x5,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      p => mult1_p_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/fir_col4"

entity fir_col4_entity_c6201ecb05 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(15 downto 0); 
    imag2: in std_logic_vector(15 downto 0); 
    imag3: in std_logic_vector(15 downto 0); 
    imag4: in std_logic_vector(15 downto 0); 
    real1: in std_logic_vector(15 downto 0); 
    real2: in std_logic_vector(15 downto 0); 
    real3: in std_logic_vector(15 downto 0); 
    real4: in std_logic_vector(15 downto 0); 
    imag_sum: out std_logic_vector(42 downto 0); 
    real_sum: out std_logic_vector(42 downto 0)
  );
end fir_col4_entity_c6201ecb05;

architecture structural of fir_col4_entity_c6201ecb05 is
  signal addr3_s_net_x2: std_logic_vector(42 downto 0);
  signal addr3_s_net_x3: std_logic_vector(42 downto 0);
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal mult0_p_net_x4: std_logic_vector(40 downto 0);
  signal mult0_p_net_x5: std_logic_vector(40 downto 0);
  signal mult0_p_net_x6: std_logic_vector(40 downto 0);
  signal mult0_p_net_x7: std_logic_vector(40 downto 0);
  signal mult1_p_net_x4: std_logic_vector(40 downto 0);
  signal mult1_p_net_x5: std_logic_vector(40 downto 0);
  signal mult1_p_net_x6: std_logic_vector(40 downto 0);
  signal mult1_p_net_x7: std_logic_vector(40 downto 0);
  signal register0_q_net_x28: std_logic_vector(15 downto 0);
  signal register0_q_net_x29: std_logic_vector(15 downto 0);
  signal register0_q_net_x7: std_logic_vector(15 downto 0);
  signal register0_q_net_x8: std_logic_vector(15 downto 0);
  signal register1_q_net_x28: std_logic_vector(15 downto 0);
  signal register1_q_net_x29: std_logic_vector(15 downto 0);
  signal register1_q_net_x7: std_logic_vector(15 downto 0);
  signal register1_q_net_x8: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  register1_q_net_x7 <= imag1;
  register1_q_net_x8 <= imag2;
  register1_q_net_x28 <= imag3;
  register1_q_net_x29 <= imag4;
  register0_q_net_x7 <= real1;
  register0_q_net_x8 <= real2;
  register0_q_net_x28 <= real3;
  register0_q_net_x29 <= real4;
  imag_sum <= addr3_s_net_x3;
  real_sum <= addr3_s_net_x2;

  adder_tree1_aa607d1a82: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din1 => mult0_p_net_x4,
      din2 => mult0_p_net_x5,
      din3 => mult0_p_net_x6,
      din4 => mult0_p_net_x7,
      dout => addr3_s_net_x2
    );

  adder_tree2_98a93c0a96: entity work.adder_tree1_entity_3cfd7215cc
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din1 => mult1_p_net_x4,
      din2 => mult1_p_net_x5,
      din3 => mult1_p_net_x6,
      din4 => mult1_p_net_x7,
      dout => addr3_s_net_x3
    );

  fir_tap1_97abae6d2a: entity work.fir_tap1_entity_97abae6d2a
    port map (
      a => register0_q_net_x7,
      b => register1_q_net_x7,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      imag => mult1_p_net_x4,
      real_x0 => mult0_p_net_x4
    );

  fir_tap2_a629a779bb: entity work.fir_tap1_entity_97abae6d2a
    port map (
      a => register0_q_net_x8,
      b => register1_q_net_x8,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      imag => mult1_p_net_x5,
      real_x0 => mult0_p_net_x5
    );

  fir_tap3_f112dd2315: entity work.fir_tap1_entity_97abae6d2a
    port map (
      a => register0_q_net_x28,
      b => register1_q_net_x28,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      imag => mult1_p_net_x6,
      real_x0 => mult0_p_net_x6
    );

  fir_tap4_aa1eee0604: entity work.fir_tap1_entity_97abae6d2a
    port map (
      a => register0_q_net_x29,
      b => register1_q_net_x29,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      imag => mult1_p_net_x7,
      real_x0 => mult0_p_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/imag_sum"

entity imag_sum_entity_d41c0d1bd4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(42 downto 0); 
    din2: in std_logic_vector(42 downto 0); 
    din3: in std_logic_vector(42 downto 0); 
    din4: in std_logic_vector(42 downto 0); 
    dout: out std_logic_vector(44 downto 0)
  );
end imag_sum_entity_d41c0d1bd4;

architecture structural of imag_sum_entity_d41c0d1bd4 is
  signal addr1_s_net: std_logic_vector(43 downto 0);
  signal addr2_s_net: std_logic_vector(43 downto 0);
  signal addr3_s_net_x0: std_logic_vector(44 downto 0);
  signal addr3_s_net_x10: std_logic_vector(42 downto 0);
  signal addr3_s_net_x7: std_logic_vector(42 downto 0);
  signal addr3_s_net_x8: std_logic_vector(42 downto 0);
  signal addr3_s_net_x9: std_logic_vector(42 downto 0);
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;

begin
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  addr3_s_net_x7 <= din1;
  addr3_s_net_x8 <= din2;
  addr3_s_net_x9 <= din3;
  addr3_s_net_x10 <= din4;
  dout <= addr3_s_net_x0;

  addr1: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 43,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 43,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 44,
      core_name0 => "addsb_11_0_eef67c1cc12cdbba",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 44,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 44
    )
    port map (
      a => addr3_s_net_x7,
      b => addr3_s_net_x8,
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 43,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 43,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 44,
      core_name0 => "addsb_11_0_eef67c1cc12cdbba",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 44,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 44
    )
    port map (
      a => addr3_s_net_x9,
      b => addr3_s_net_x10,
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 44,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 44,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 45,
      core_name0 => "addsb_11_0_41035397f321bdbe",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 45,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 45
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/real_sum"

entity real_sum_entity_0b726b81e6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(42 downto 0); 
    din2: in std_logic_vector(42 downto 0); 
    din3: in std_logic_vector(42 downto 0); 
    din4: in std_logic_vector(42 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(44 downto 0); 
    sync_out: out std_logic
  );
end real_sum_entity_0b726b81e6;

architecture structural of real_sum_entity_0b726b81e6 is
  signal addr1_s_net: std_logic_vector(43 downto 0);
  signal addr2_s_net: std_logic_vector(43 downto 0);
  signal addr3_s_net_x0: std_logic_vector(44 downto 0);
  signal addr3_s_net_x6: std_logic_vector(42 downto 0);
  signal addr3_s_net_x7: std_logic_vector(42 downto 0);
  signal addr3_s_net_x8: std_logic_vector(42 downto 0);
  signal addr3_s_net_x9: std_logic_vector(42 downto 0);
  signal ce_1_sg_x36: std_logic;
  signal clk_1_sg_x36: std_logic;
  signal delay_q_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x36 <= ce_1;
  clk_1_sg_x36 <= clk_1;
  addr3_s_net_x6 <= din1;
  addr3_s_net_x7 <= din2;
  addr3_s_net_x8 <= din3;
  addr3_s_net_x9 <= din4;
  delay_q_net_x0 <= sync;
  dout <= addr3_s_net_x0;
  sync_out <= sync_delay_q_net_x0;

  addr1: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 43,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 43,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 44,
      core_name0 => "addsb_11_0_eef67c1cc12cdbba",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 44,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 44
    )
    port map (
      a => addr3_s_net_x6,
      b => addr3_s_net_x7,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 43,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 43,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 44,
      core_name0 => "addsb_11_0_eef67c1cc12cdbba",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 44,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 44
    )
    port map (
      a => addr3_s_net_x8,
      b => addr3_s_net_x9,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 39,
      a_width => 44,
      b_arith => xlSigned,
      b_bin_pt => 39,
      b_width => 44,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 45,
      core_name0 => "addsb_11_0_41035397f321bdbe",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 45,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 39,
      s_width => 45
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

  sync_delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      d(0) => delay_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir/ri_to_c"

entity ri_to_c_entity_c333afd3e6 is
  port (
    im: in std_logic_vector(7 downto 0); 
    re: in std_logic_vector(7 downto 0); 
    c: out std_logic_vector(15 downto 0)
  );
end ri_to_c_entity_c333afd3e6;

architecture structural of ri_to_c_entity_c333afd3e6 is
  signal concat_y_net_x0: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal force_im_output_port_net: std_logic_vector(7 downto 0);
  signal force_re_output_port_net: std_logic_vector(7 downto 0);

begin
  convert2_dout_net_x0 <= im;
  convert1_dout_net_x0 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_8e53793314
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/dec_fir"

entity dec_fir_entity_850ff09567 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(15 downto 0); 
    imag3: in std_logic_vector(15 downto 0); 
    real1: in std_logic_vector(15 downto 0); 
    real2: in std_logic_vector(15 downto 0); 
    real3: in std_logic_vector(15 downto 0); 
    sync_in: in std_logic; 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic
  );
end dec_fir_entity_850ff09567;

architecture structural of dec_fir_entity_850ff09567 is
  signal addr3_s_net_x0: std_logic_vector(44 downto 0);
  signal addr3_s_net_x10: std_logic_vector(42 downto 0);
  signal addr3_s_net_x11: std_logic_vector(42 downto 0);
  signal addr3_s_net_x12: std_logic_vector(42 downto 0);
  signal addr3_s_net_x13: std_logic_vector(42 downto 0);
  signal addr3_s_net_x14: std_logic_vector(44 downto 0);
  signal addr3_s_net_x6: std_logic_vector(42 downto 0);
  signal addr3_s_net_x7: std_logic_vector(42 downto 0);
  signal addr3_s_net_x8: std_logic_vector(42 downto 0);
  signal addr3_s_net_x9: std_logic_vector(42 downto 0);
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal concat_y_net_x1: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay80_q_net_x4: std_logic_vector(15 downto 0);
  signal delay80_q_net_x5: std_logic_vector(15 downto 0);
  signal delay82_q_net_x4: std_logic_vector(15 downto 0);
  signal delay82_q_net_x5: std_logic_vector(15 downto 0);
  signal delay83_q_net_x2: std_logic_vector(15 downto 0);
  signal delay_q_net_x0: std_logic;
  signal register0_q_net_x12: std_logic_vector(15 downto 0);
  signal register0_q_net_x13: std_logic_vector(15 downto 0);
  signal register0_q_net_x14: std_logic_vector(15 downto 0);
  signal register0_q_net_x15: std_logic_vector(15 downto 0);
  signal register0_q_net_x21: std_logic_vector(15 downto 0);
  signal register0_q_net_x22: std_logic_vector(15 downto 0);
  signal register0_q_net_x23: std_logic_vector(15 downto 0);
  signal register0_q_net_x24: std_logic_vector(15 downto 0);
  signal register0_q_net_x28: std_logic_vector(15 downto 0);
  signal register0_q_net_x29: std_logic_vector(15 downto 0);
  signal register0_q_net_x7: std_logic_vector(15 downto 0);
  signal register0_q_net_x8: std_logic_vector(15 downto 0);
  signal register1_q_net_x12: std_logic_vector(15 downto 0);
  signal register1_q_net_x13: std_logic_vector(15 downto 0);
  signal register1_q_net_x14: std_logic_vector(15 downto 0);
  signal register1_q_net_x15: std_logic_vector(15 downto 0);
  signal register1_q_net_x21: std_logic_vector(15 downto 0);
  signal register1_q_net_x22: std_logic_vector(15 downto 0);
  signal register1_q_net_x23: std_logic_vector(15 downto 0);
  signal register1_q_net_x24: std_logic_vector(15 downto 0);
  signal register1_q_net_x28: std_logic_vector(15 downto 0);
  signal register1_q_net_x29: std_logic_vector(15 downto 0);
  signal register1_q_net_x7: std_logic_vector(15 downto 0);
  signal register1_q_net_x8: std_logic_vector(15 downto 0);
  signal shift1_op_net: std_logic_vector(44 downto 0);
  signal shift2_op_net: std_logic_vector(44 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  delay80_q_net_x4 <= imag1;
  delay80_q_net_x5 <= imag3;
  delay82_q_net_x4 <= real1;
  delay83_q_net_x2 <= real2;
  delay82_q_net_x5 <= real3;
  delay1_q_net_x0 <= sync_in;
  dout <= concat_y_net_x1;
  sync_out <= sync_delay_q_net_x1;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 39,
      din_width => 45,
      dout_arith => 2,
      dout_bin_pt => 7,
      dout_width => 8,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => shift1_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 39,
      din_width => 45,
      dout_arith => 2,
      dout_bin_pt => 7,
      dout_width => 8,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => shift2_op_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      d(0) => delay1_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  fir_col1_37de36d5c8: entity work.fir_col1_entity_37de36d5c8
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      imag1 => delay80_q_net_x4,
      imag3 => delay80_q_net_x5,
      real1 => delay82_q_net_x4,
      real2 => delay83_q_net_x2,
      real3 => delay82_q_net_x5,
      imag_out1 => register1_q_net_x12,
      imag_out2 => register1_q_net_x13,
      imag_out3 => register1_q_net_x14,
      imag_out4 => register1_q_net_x15,
      imag_sum => addr3_s_net_x7,
      real_out1 => register0_q_net_x12,
      real_out2 => register0_q_net_x13,
      real_out3 => register0_q_net_x14,
      real_out4 => register0_q_net_x15,
      real_sum => addr3_s_net_x6
    );

  fir_col2_8bd558b6ea: entity work.fir_col2_entity_8bd558b6ea
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      imag1 => register1_q_net_x12,
      imag2 => register1_q_net_x13,
      imag3 => register1_q_net_x14,
      imag4 => register1_q_net_x15,
      real1 => register0_q_net_x12,
      real2 => register0_q_net_x13,
      real3 => register0_q_net_x14,
      real4 => register0_q_net_x15,
      imag_out1 => register1_q_net_x21,
      imag_out2 => register1_q_net_x22,
      imag_out3 => register1_q_net_x23,
      imag_out4 => register1_q_net_x24,
      imag_sum => addr3_s_net_x9,
      real_out1 => register0_q_net_x21,
      real_out2 => register0_q_net_x22,
      real_out3 => register0_q_net_x23,
      real_out4 => register0_q_net_x24,
      real_sum => addr3_s_net_x8
    );

  fir_col3_1daca9ab53: entity work.fir_col2_entity_8bd558b6ea
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      imag1 => register1_q_net_x21,
      imag2 => register1_q_net_x22,
      imag3 => register1_q_net_x23,
      imag4 => register1_q_net_x24,
      real1 => register0_q_net_x21,
      real2 => register0_q_net_x22,
      real3 => register0_q_net_x23,
      real4 => register0_q_net_x24,
      imag_out1 => register1_q_net_x7,
      imag_out2 => register1_q_net_x8,
      imag_out3 => register1_q_net_x28,
      imag_out4 => register1_q_net_x29,
      imag_sum => addr3_s_net_x11,
      real_out1 => register0_q_net_x7,
      real_out2 => register0_q_net_x8,
      real_out3 => register0_q_net_x28,
      real_out4 => register0_q_net_x29,
      real_sum => addr3_s_net_x10
    );

  fir_col4_c6201ecb05: entity work.fir_col4_entity_c6201ecb05
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      imag1 => register1_q_net_x7,
      imag2 => register1_q_net_x8,
      imag3 => register1_q_net_x28,
      imag4 => register1_q_net_x29,
      real1 => register0_q_net_x7,
      real2 => register0_q_net_x8,
      real3 => register0_q_net_x28,
      real4 => register0_q_net_x29,
      imag_sum => addr3_s_net_x13,
      real_sum => addr3_s_net_x12
    );

  imag_sum_d41c0d1bd4: entity work.imag_sum_entity_d41c0d1bd4
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      din1 => addr3_s_net_x7,
      din2 => addr3_s_net_x9,
      din3 => addr3_s_net_x11,
      din4 => addr3_s_net_x13,
      dout => addr3_s_net_x0
    );

  real_sum_0b726b81e6: entity work.real_sum_entity_0b726b81e6
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      din1 => addr3_s_net_x6,
      din2 => addr3_s_net_x8,
      din3 => addr3_s_net_x10,
      din4 => addr3_s_net_x12,
      sync => delay_q_net_x0,
      dout => addr3_s_net_x14,
      sync_out => sync_delay_q_net_x1
    );

  ri_to_c_c333afd3e6: entity work.ri_to_c_entity_c333afd3e6
    port map (
      im => convert2_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x1
    );

  shift1: entity work.shift_92df6a3714
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      ip => addr3_s_net_x14,
      op => shift1_op_net
    );

  shift2: entity work.shift_92df6a3714
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      ip => addr3_s_net_x0,
      op => shift2_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_0/Shared_BRAM/calc_add"

entity calc_add_entity_dc8690c7a8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(10 downto 0); 
    out_x0: out std_logic_vector(9 downto 0)
  );
end calc_add_entity_dc8690c7a8;

architecture structural of calc_add_entity_dc8690c7a8 is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x69: std_logic;
  signal clk_1_sg_x69: std_logic;
  signal concat_y_net: std_logic_vector(9 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(9 downto 0);
  signal delay80_q_net_x0: std_logic_vector(10 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x69 <= ce_1;
  clk_1_sg_x69 <= clk_1;
  delay80_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_1d98d96b58
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      clr => '0',
      din => delay80_q_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 9,
      x_width => 10,
      y_width => 9
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_4fe5face7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_0/Shared_BRAM/munge_in"

entity munge_in_entity_0ade437671 is
  port (
    din: in std_logic_vector(17 downto 0); 
    dout: out std_logic_vector(17 downto 0)
  );
end munge_in_entity_0ade437671;

architecture structural of munge_in_entity_0ade437671 is
  signal constant10_op_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(17 downto 0);

begin
  constant10_op_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  reinterpret_out: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => constant10_op_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_0/Shared_BRAM/munge_out"

entity munge_out_entity_f808bbe6a6 is
  port (
    din: in std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(31 downto 0)
  );
end munge_out_entity_f808bbe6a6;

architecture structural of munge_out_entity_f808bbe6a6 is
  signal reinterpret_out_output_port_net_x0: std_logic_vector(31 downto 0);
  signal window_design_lo_0_shared_bram_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  window_design_lo_0_shared_bram_data_out_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  reinterpret_out: entity work.reinterpret_dc139e7f7a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => window_design_lo_0_shared_bram_data_out_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_0/Shared_BRAM"

entity shared_bram_entity_d7dbb26ea4 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    we: in std_logic_vector(17 downto 0); 
    window_design_lo_0_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic; 
    data_out: out std_logic_vector(31 downto 0)
  );
end shared_bram_entity_d7dbb26ea4;

architecture structural of shared_bram_entity_d7dbb26ea4 is
  signal ce_1_sg_x70: std_logic;
  signal clk_1_sg_x70: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay80_q_net_x1: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal window_design_lo_0_shared_bram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x1 <= addr;
  ce_1_sg_x70 <= ce_1;
  clk_1_sg_x70 <= clk_1;
  constant10_op_net_x1 <= data_in;
  constant9_op_net_x0 <= we;
  window_design_lo_0_shared_bram_data_out_net_x1 <= window_design_lo_0_shared_bram_data_out;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;
  data_out <= reinterpret_out_output_port_net_x2;

  calc_add_dc8690c7a8: entity work.calc_add_entity_dc8690c7a8
    port map (
      ce_1 => ce_1_sg_x70,
      clk_1 => clk_1_sg_x70,
      in_x0 => delay80_q_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      din => constant9_op_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_0ade437671: entity work.munge_in_entity_0ade437671
    port map (
      din => constant10_op_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

  munge_out_f808bbe6a6: entity work.munge_out_entity_f808bbe6a6
    port map (
      din => window_design_lo_0_shared_bram_data_out_net_x1,
      dout => reinterpret_out_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_0"

entity lo_0_entity_059817023a is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(7 downto 0); 
    pol2: in std_logic_vector(7 downto 0); 
    window_design_lo_0_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    pol1_im: out std_logic_vector(15 downto 0); 
    pol1_re: out std_logic_vector(15 downto 0); 
    pol2_re: out std_logic_vector(15 downto 0); 
    reinterpret12_x0: out std_logic_vector(15 downto 0); 
    reinterpret9_x0: out std_logic_vector(15 downto 0); 
    shared_bram: out std_logic_vector(9 downto 0); 
    shared_bram_x0: out std_logic_vector(31 downto 0); 
    shared_bram_x1: out std_logic
  );
end lo_0_entity_059817023a;

architecture structural of lo_0_entity_059817023a is
  signal ce_1_sg_x71: std_logic;
  signal clk_1_sg_x71: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal cos_slice_y_net: std_logic_vector(15 downto 0);
  signal delay32_q_net: std_logic_vector(7 downto 0);
  signal delay33_q_net: std_logic_vector(15 downto 0);
  signal delay36_q_net: std_logic_vector(7 downto 0);
  signal delay37_q_net: std_logic_vector(15 downto 0);
  signal delay38_q_net: std_logic_vector(7 downto 0);
  signal delay39_q_net: std_logic_vector(15 downto 0);
  signal delay80_q_net_x5: std_logic_vector(10 downto 0);
  signal delay80_q_net_x6: std_logic_vector(15 downto 0);
  signal delay82_q_net_x5: std_logic_vector(15 downto 0);
  signal delay83_q_net_x3: std_logic_vector(15 downto 0);
  signal mult16_p_net: std_logic_vector(15 downto 0);
  signal mult2_p_net: std_logic_vector(15 downto 0);
  signal mult3_p_net: std_logic_vector(15 downto 0);
  signal reinterpret12_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret9_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(7 downto 0);
  signal sin_slice_y_net: std_logic_vector(15 downto 0);
  signal window_design_lo_0_shared_bram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x5 <= addr;
  ce_1_sg_x71 <= ce_1;
  clk_1_sg_x71 <= clk_1;
  reinterpret_output_port_net_x7 <= pol1;
  reinterpret_output_port_net_x11 <= pol2;
  window_design_lo_0_shared_bram_data_out_net_x2 <= window_design_lo_0_shared_bram_data_out;
  pol1_im <= delay80_q_net_x6;
  pol1_re <= delay82_q_net_x5;
  pol2_re <= delay83_q_net_x3;
  reinterpret12_x0 <= reinterpret12_output_port_net_x0;
  reinterpret9_x0 <= reinterpret9_output_port_net_x0;
  shared_bram <= convert_addr_dout_net_x1;
  shared_bram_x0 <= convert_din1_dout_net_x1;
  shared_bram_x1 <= convert_we_dout_net_x1;

  constant10: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  constant9: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net_x0
    );

  cos_slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => cos_slice_y_net
    );

  delay32: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret_output_port_net_x7,
      q => delay32_q_net
    );

  delay33: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret12_output_port_net_x0,
      q => delay33_q_net
    );

  delay36: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret_output_port_net_x7,
      q => delay36_q_net
    );

  delay37: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay37_q_net
    );

  delay38: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret_output_port_net_x11,
      q => delay38_q_net
    );

  delay39: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay39_q_net
    );

  delay80: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => mult16_p_net,
      q => delay80_q_net_x6
    );

  delay82: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => mult2_p_net,
      q => delay82_q_net_x5
    );

  delay83: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => mult3_p_net,
      q => delay83_q_net_x3
    );

  mult16: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay32_q_net,
      b => delay33_q_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      core_ce => ce_1_sg_x71,
      core_clk => clk_1_sg_x71,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net
    );

  mult2: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay36_q_net,
      b => delay37_q_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      core_ce => ce_1_sg_x71,
      core_clk => clk_1_sg_x71,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  mult3: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay38_q_net,
      b => delay39_q_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      core_ce => ce_1_sg_x71,
      core_clk => clk_1_sg_x71,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net
    );

  reinterpret12: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => sin_slice_y_net,
      output_port => reinterpret12_output_port_net_x0
    );

  reinterpret9: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => cos_slice_y_net,
      output_port => reinterpret9_output_port_net_x0
    );

  shared_bram_d7dbb26ea4: entity work.shared_bram_entity_d7dbb26ea4
    port map (
      addr => delay80_q_net_x5,
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      data_in => constant10_op_net_x1,
      we => constant9_op_net_x0,
      window_design_lo_0_shared_bram_data_out => window_design_lo_0_shared_bram_data_out_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1,
      data_out => reinterpret_out_output_port_net_x2
    );

  sin_slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => sin_slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_1/Shared_BRAM"

entity shared_bram_entity_7002704b30 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    we: in std_logic_vector(17 downto 0); 
    window_design_lo_1_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic; 
    data_out: out std_logic_vector(31 downto 0)
  );
end shared_bram_entity_7002704b30;

architecture structural of shared_bram_entity_7002704b30 is
  signal ce_1_sg_x73: std_logic;
  signal clk_1_sg_x73: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay80_q_net_x7: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal window_design_lo_1_shared_bram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x7 <= addr;
  ce_1_sg_x73 <= ce_1;
  clk_1_sg_x73 <= clk_1;
  constant10_op_net_x1 <= data_in;
  constant9_op_net_x0 <= we;
  window_design_lo_1_shared_bram_data_out_net_x1 <= window_design_lo_1_shared_bram_data_out;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;
  data_out <= reinterpret_out_output_port_net_x2;

  calc_add_317bae607c: entity work.calc_add_entity_dc8690c7a8
    port map (
      ce_1 => ce_1_sg_x73,
      clk_1 => clk_1_sg_x73,
      in_x0 => delay80_q_net_x7,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      din => constant9_op_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_538ff48bb5: entity work.munge_in_entity_0ade437671
    port map (
      din => constant10_op_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

  munge_out_23e2f20bcf: entity work.munge_out_entity_f808bbe6a6
    port map (
      din => window_design_lo_1_shared_bram_data_out_net_x1,
      dout => reinterpret_out_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_1"

entity lo_1_entity_6953ea7b99 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(7 downto 0); 
    window_design_lo_1_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    pol1_im: out std_logic_vector(15 downto 0); 
    pol1_re: out std_logic_vector(15 downto 0); 
    reinterpret12_x0: out std_logic_vector(15 downto 0); 
    reinterpret9_x0: out std_logic_vector(15 downto 0); 
    shared_bram: out std_logic_vector(9 downto 0); 
    shared_bram_x0: out std_logic_vector(31 downto 0); 
    shared_bram_x1: out std_logic
  );
end lo_1_entity_6953ea7b99;

architecture structural of lo_1_entity_6953ea7b99 is
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal cos_slice_y_net: std_logic_vector(15 downto 0);
  signal delay32_q_net: std_logic_vector(7 downto 0);
  signal delay33_q_net: std_logic_vector(15 downto 0);
  signal delay36_q_net: std_logic_vector(7 downto 0);
  signal delay37_q_net: std_logic_vector(15 downto 0);
  signal delay80_q_net_x8: std_logic_vector(10 downto 0);
  signal delay80_q_net_x9: std_logic_vector(15 downto 0);
  signal delay82_q_net_x6: std_logic_vector(15 downto 0);
  signal mult16_p_net: std_logic_vector(15 downto 0);
  signal mult2_p_net: std_logic_vector(15 downto 0);
  signal reinterpret12_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret9_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal sin_slice_y_net: std_logic_vector(15 downto 0);
  signal window_design_lo_1_shared_bram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x8 <= addr;
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  reinterpret_output_port_net_x8 <= pol1;
  window_design_lo_1_shared_bram_data_out_net_x2 <= window_design_lo_1_shared_bram_data_out;
  pol1_im <= delay80_q_net_x9;
  pol1_re <= delay82_q_net_x6;
  reinterpret12_x0 <= reinterpret12_output_port_net_x0;
  reinterpret9_x0 <= reinterpret9_output_port_net_x0;
  shared_bram <= convert_addr_dout_net_x1;
  shared_bram_x0 <= convert_din1_dout_net_x1;
  shared_bram_x1 <= convert_we_dout_net_x1;

  constant10: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  constant9: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net_x0
    );

  cos_slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => cos_slice_y_net
    );

  delay32: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => reinterpret_output_port_net_x8,
      q => delay32_q_net
    );

  delay33: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => reinterpret12_output_port_net_x0,
      q => delay33_q_net
    );

  delay36: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => reinterpret_output_port_net_x8,
      q => delay36_q_net
    );

  delay37: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay37_q_net
    );

  delay80: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => mult16_p_net,
      q => delay80_q_net_x9
    );

  delay82: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => mult2_p_net,
      q => delay82_q_net_x6
    );

  mult16: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay32_q_net,
      b => delay33_q_net,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      core_ce => ce_1_sg_x74,
      core_clk => clk_1_sg_x74,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net
    );

  mult2: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay36_q_net,
      b => delay37_q_net,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      core_ce => ce_1_sg_x74,
      core_clk => clk_1_sg_x74,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  reinterpret12: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => sin_slice_y_net,
      output_port => reinterpret12_output_port_net_x0
    );

  reinterpret9: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => cos_slice_y_net,
      output_port => reinterpret9_output_port_net_x0
    );

  shared_bram_7002704b30: entity work.shared_bram_entity_7002704b30
    port map (
      addr => delay80_q_net_x8,
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      data_in => constant10_op_net_x1,
      we => constant9_op_net_x0,
      window_design_lo_1_shared_bram_data_out => window_design_lo_1_shared_bram_data_out_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1,
      data_out => reinterpret_out_output_port_net_x2
    );

  sin_slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => sin_slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_2/Shared_BRAM"

entity shared_bram_entity_7af2ea86f3 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    we: in std_logic_vector(17 downto 0); 
    window_design_lo_2_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic; 
    data_out: out std_logic_vector(31 downto 0)
  );
end shared_bram_entity_7af2ea86f3;

architecture structural of shared_bram_entity_7af2ea86f3 is
  signal ce_1_sg_x76: std_logic;
  signal clk_1_sg_x76: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay80_q_net_x10: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal window_design_lo_2_shared_bram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x10 <= addr;
  ce_1_sg_x76 <= ce_1;
  clk_1_sg_x76 <= clk_1;
  constant10_op_net_x1 <= data_in;
  constant9_op_net_x0 <= we;
  window_design_lo_2_shared_bram_data_out_net_x1 <= window_design_lo_2_shared_bram_data_out;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;
  data_out <= reinterpret_out_output_port_net_x2;

  calc_add_8b3b013d6d: entity work.calc_add_entity_dc8690c7a8
    port map (
      ce_1 => ce_1_sg_x76,
      clk_1 => clk_1_sg_x76,
      in_x0 => delay80_q_net_x10,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      din => constant9_op_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_49bc3d7b45: entity work.munge_in_entity_0ade437671
    port map (
      din => constant10_op_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

  munge_out_a1cb6f9dd2: entity work.munge_out_entity_f808bbe6a6
    port map (
      din => window_design_lo_2_shared_bram_data_out_net_x1,
      dout => reinterpret_out_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_2"

entity lo_2_entity_bbe0f5f1df is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(7 downto 0); 
    pol2: in std_logic_vector(7 downto 0); 
    window_design_lo_2_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    pol1_im: out std_logic_vector(15 downto 0); 
    pol1_re: out std_logic_vector(15 downto 0); 
    pol2_re: out std_logic_vector(15 downto 0); 
    reinterpret12_x0: out std_logic_vector(15 downto 0); 
    reinterpret9_x0: out std_logic_vector(15 downto 0); 
    shared_bram: out std_logic_vector(9 downto 0); 
    shared_bram_x0: out std_logic_vector(31 downto 0); 
    shared_bram_x1: out std_logic
  );
end lo_2_entity_bbe0f5f1df;

architecture structural of lo_2_entity_bbe0f5f1df is
  signal ce_1_sg_x77: std_logic;
  signal clk_1_sg_x77: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal cos_slice_y_net: std_logic_vector(15 downto 0);
  signal delay32_q_net: std_logic_vector(7 downto 0);
  signal delay33_q_net: std_logic_vector(15 downto 0);
  signal delay36_q_net: std_logic_vector(7 downto 0);
  signal delay37_q_net: std_logic_vector(15 downto 0);
  signal delay38_q_net: std_logic_vector(7 downto 0);
  signal delay39_q_net: std_logic_vector(15 downto 0);
  signal delay80_q_net_x11: std_logic_vector(10 downto 0);
  signal delay80_q_net_x12: std_logic_vector(15 downto 0);
  signal delay82_q_net_x5: std_logic_vector(15 downto 0);
  signal delay83_q_net_x3: std_logic_vector(15 downto 0);
  signal mult16_p_net: std_logic_vector(15 downto 0);
  signal mult2_p_net: std_logic_vector(15 downto 0);
  signal mult3_p_net: std_logic_vector(15 downto 0);
  signal reinterpret12_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret9_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal sin_slice_y_net: std_logic_vector(15 downto 0);
  signal window_design_lo_2_shared_bram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x11 <= addr;
  ce_1_sg_x77 <= ce_1;
  clk_1_sg_x77 <= clk_1;
  reinterpret_output_port_net_x12 <= pol1;
  reinterpret_output_port_net_x13 <= pol2;
  window_design_lo_2_shared_bram_data_out_net_x2 <= window_design_lo_2_shared_bram_data_out;
  pol1_im <= delay80_q_net_x12;
  pol1_re <= delay82_q_net_x5;
  pol2_re <= delay83_q_net_x3;
  reinterpret12_x0 <= reinterpret12_output_port_net_x0;
  reinterpret9_x0 <= reinterpret9_output_port_net_x0;
  shared_bram <= convert_addr_dout_net_x1;
  shared_bram_x0 <= convert_din1_dout_net_x1;
  shared_bram_x1 <= convert_we_dout_net_x1;

  constant10: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  constant9: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net_x0
    );

  cos_slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => cos_slice_y_net
    );

  delay32: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret_output_port_net_x12,
      q => delay32_q_net
    );

  delay33: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret12_output_port_net_x0,
      q => delay33_q_net
    );

  delay36: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret_output_port_net_x12,
      q => delay36_q_net
    );

  delay37: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay37_q_net
    );

  delay38: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret_output_port_net_x13,
      q => delay38_q_net
    );

  delay39: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay39_q_net
    );

  delay80: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => mult16_p_net,
      q => delay80_q_net_x12
    );

  delay82: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => mult2_p_net,
      q => delay82_q_net_x5
    );

  delay83: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => mult3_p_net,
      q => delay83_q_net_x3
    );

  mult16: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay32_q_net,
      b => delay33_q_net,
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      core_ce => ce_1_sg_x77,
      core_clk => clk_1_sg_x77,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net
    );

  mult2: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay36_q_net,
      b => delay37_q_net,
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      core_ce => ce_1_sg_x77,
      core_clk => clk_1_sg_x77,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  mult3: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay38_q_net,
      b => delay39_q_net,
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      core_ce => ce_1_sg_x77,
      core_clk => clk_1_sg_x77,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net
    );

  reinterpret12: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => sin_slice_y_net,
      output_port => reinterpret12_output_port_net_x0
    );

  reinterpret9: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => cos_slice_y_net,
      output_port => reinterpret9_output_port_net_x0
    );

  shared_bram_7af2ea86f3: entity work.shared_bram_entity_7af2ea86f3
    port map (
      addr => delay80_q_net_x11,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      data_in => constant10_op_net_x1,
      we => constant9_op_net_x0,
      window_design_lo_2_shared_bram_data_out => window_design_lo_2_shared_bram_data_out_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1,
      data_out => reinterpret_out_output_port_net_x2
    );

  sin_slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => sin_slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_3/Shared_BRAM"

entity shared_bram_entity_fe3908d994 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    we: in std_logic_vector(17 downto 0); 
    window_design_lo_3_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic; 
    data_out: out std_logic_vector(31 downto 0)
  );
end shared_bram_entity_fe3908d994;

architecture structural of shared_bram_entity_fe3908d994 is
  signal ce_1_sg_x79: std_logic;
  signal clk_1_sg_x79: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay80_q_net_x13: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal window_design_lo_3_shared_bram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x13 <= addr;
  ce_1_sg_x79 <= ce_1;
  clk_1_sg_x79 <= clk_1;
  constant10_op_net_x1 <= data_in;
  constant9_op_net_x0 <= we;
  window_design_lo_3_shared_bram_data_out_net_x1 <= window_design_lo_3_shared_bram_data_out;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;
  data_out <= reinterpret_out_output_port_net_x2;

  calc_add_62c5f7a597: entity work.calc_add_entity_dc8690c7a8
    port map (
      ce_1 => ce_1_sg_x79,
      clk_1 => clk_1_sg_x79,
      in_x0 => delay80_q_net_x13,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      din => constant9_op_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_e8a564ee45: entity work.munge_in_entity_0ade437671
    port map (
      din => constant10_op_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

  munge_out_34093cf63a: entity work.munge_out_entity_f808bbe6a6
    port map (
      din => window_design_lo_3_shared_bram_data_out_net_x1,
      dout => reinterpret_out_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/lo_3"

entity lo_3_entity_cfd3924168 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(7 downto 0); 
    window_design_lo_3_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    pol1_im: out std_logic_vector(15 downto 0); 
    pol1_re: out std_logic_vector(15 downto 0); 
    reinterpret12_x0: out std_logic_vector(15 downto 0); 
    reinterpret9_x0: out std_logic_vector(15 downto 0); 
    shared_bram: out std_logic_vector(9 downto 0); 
    shared_bram_x0: out std_logic_vector(31 downto 0); 
    shared_bram_x1: out std_logic
  );
end lo_3_entity_cfd3924168;

architecture structural of lo_3_entity_cfd3924168 is
  signal ce_1_sg_x80: std_logic;
  signal clk_1_sg_x80: std_logic;
  signal constant10_op_net_x1: std_logic_vector(17 downto 0);
  signal constant9_op_net_x0: std_logic_vector(17 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal cos_slice_y_net: std_logic_vector(15 downto 0);
  signal delay32_q_net: std_logic_vector(7 downto 0);
  signal delay33_q_net: std_logic_vector(15 downto 0);
  signal delay36_q_net: std_logic_vector(7 downto 0);
  signal delay37_q_net: std_logic_vector(15 downto 0);
  signal delay80_q_net_x14: std_logic_vector(10 downto 0);
  signal delay80_q_net_x6: std_logic_vector(15 downto 0);
  signal delay82_q_net_x6: std_logic_vector(15 downto 0);
  signal mult16_p_net: std_logic_vector(15 downto 0);
  signal mult2_p_net: std_logic_vector(15 downto 0);
  signal reinterpret12_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret9_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret_out_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal sin_slice_y_net: std_logic_vector(15 downto 0);
  signal window_design_lo_3_shared_bram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  delay80_q_net_x14 <= addr;
  ce_1_sg_x80 <= ce_1;
  clk_1_sg_x80 <= clk_1;
  reinterpret_output_port_net_x10 <= pol1;
  window_design_lo_3_shared_bram_data_out_net_x2 <= window_design_lo_3_shared_bram_data_out;
  pol1_im <= delay80_q_net_x6;
  pol1_re <= delay82_q_net_x6;
  reinterpret12_x0 <= reinterpret12_output_port_net_x0;
  reinterpret9_x0 <= reinterpret9_output_port_net_x0;
  shared_bram <= convert_addr_dout_net_x1;
  shared_bram_x0 <= convert_din1_dout_net_x1;
  shared_bram_x1 <= convert_we_dout_net_x1;

  constant10: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  constant9: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net_x0
    );

  cos_slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => cos_slice_y_net
    );

  delay32: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => reinterpret_output_port_net_x10,
      q => delay32_q_net
    );

  delay33: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => reinterpret12_output_port_net_x0,
      q => delay33_q_net
    );

  delay36: entity work.delay_ebec135d8a
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => reinterpret_output_port_net_x10,
      q => delay36_q_net
    );

  delay37: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => reinterpret9_output_port_net_x0,
      q => delay37_q_net
    );

  delay80: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => mult16_p_net,
      q => delay80_q_net_x6
    );

  delay82: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      d => mult2_p_net,
      q => delay82_q_net_x6
    );

  mult16: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay32_q_net,
      b => delay33_q_net,
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      core_ce => ce_1_sg_x80,
      core_clk => clk_1_sg_x80,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net
    );

  mult2: entity work.xlmult_window_design
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 8,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_91a8474c05889d6d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => delay36_q_net,
      b => delay37_q_net,
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      core_ce => ce_1_sg_x80,
      core_clk => clk_1_sg_x80,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  reinterpret12: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => sin_slice_y_net,
      output_port => reinterpret12_output_port_net_x0
    );

  reinterpret9: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => cos_slice_y_net,
      output_port => reinterpret9_output_port_net_x0
    );

  shared_bram_fe3908d994: entity work.shared_bram_entity_fe3908d994
    port map (
      addr => delay80_q_net_x14,
      ce_1 => ce_1_sg_x80,
      clk_1 => clk_1_sg_x80,
      data_in => constant10_op_net_x1,
      we => constant9_op_net_x0,
      window_design_lo_3_shared_bram_data_out => window_design_lo_3_shared_bram_data_out_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1,
      data_out => reinterpret_out_output_port_net_x2
    );

  sin_slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => reinterpret_out_output_port_net_x2,
      y => sin_slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/mixer_cnt"

entity mixer_cnt_entity_58b831e965 is
  port (
    window_design_mixer_cnt_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end mixer_cnt_entity_58b831e965;

architecture structural of mixer_cnt_entity_58b831e965 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal window_design_mixer_cnt_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  window_design_mixer_cnt_user_data_out_net_x0 <= window_design_mixer_cnt_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => window_design_mixer_cnt_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/pol1_window1_dout"

entity pol1_window1_dout_entity_f5d4f52ec9 is
  port (
    ce_200: in std_logic; 
    clk_200: in std_logic; 
    out_reg: in std_logic_vector(15 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end pol1_window1_dout_entity_f5d4f52ec9;

architecture structural of pol1_window1_dout_entity_f5d4f52ec9 is
  signal assert_reg_dout_net: std_logic_vector(15 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_200_sg_x0: std_logic;
  signal clk_200_sg_x0: std_logic;
  signal fir_compiler_5_0_dout_net_x0: std_logic_vector(15 downto 0);
  signal io_delay_q_net: std_logic_vector(15 downto 0);
  signal reint1_output_port_net: std_logic_vector(15 downto 0);

begin
  ce_200_sg_x0 <= ce_200;
  clk_200_sg_x0 <= clk_200;
  fir_compiler_5_0_dout_net_x0 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 16,
      dout_width => 16
    )
    port map (
      din => fir_compiler_5_0_dout_net_x0,
      dout => assert_reg_dout_net
    );

  cast_gw: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_200_sg_x0,
      clk => clk_200_sg_x0,
      clr => '0',
      din => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_9bb25f1d93
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => reint1_output_port_net,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_reg_dout_net,
      output_port => reint1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/pol1_window1_sync"

entity pol1_window1_sync_entity_8b9c47d6fa is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic; 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end pol1_window1_sync_entity_8b9c47d6fa;

architecture structural of pol1_window1_sync_entity_8b9c47d6fa is
  signal assert_reg_dout_net: std_logic;
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x81: std_logic;
  signal clk_1_sg_x81: std_logic;
  signal io_delay_q_net: std_logic;
  signal reint1_output_port_net: std_logic;
  signal sync_delay_q_net_x2: std_logic;

begin
  ce_1_sg_x81 <= ce_1;
  clk_1_sg_x81 <= clk_1;
  sync_delay_q_net_x2 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => sync_delay_q_net_x2,
      dout(0) => assert_reg_dout_net
    );

  cast_gw: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      din(0) => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_21355083c1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => reint1_output_port_net,
      q(0) => io_delay_q_net
    );

  reint1: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_reg_dout_net,
      output_port(0) => reint1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design/posedge9"

entity posedge9_entity_e57028250a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge9_entity_e57028250a;

architecture structural of posedge9_entity_e57028250a is
  signal ce_1_sg_x83: std_logic;
  signal clk_1_sg_x83: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x83 <= ce_1;
  clk_1_sg_x83 <= clk_1;
  logical_y_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      ip(0) => logical_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "window_design"

entity window_design is
  port (
    ce_1: in std_logic; 
    ce_200: in std_logic; 
    ce_logic_1: in std_logic; 
    clk_1: in std_logic; 
    clk_200: in std_logic; 
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
end window_design;

architecture structural of window_design is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "window_design,sysgen_core,{clock_period=6.25000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000 200.00000000000,testbench=0,total_blocks=1603,xilinx_adder_subtracter_block=68,xilinx_arithmetic_relational_operator_block=1,xilinx_assert_block=4,xilinx_binary_shift_operator_block=4,xilinx_bit_slice_extractor_block=42,xilinx_bus_concatenator_block=18,xilinx_bus_multiplexer_block=8,xilinx_constant_block_block=72,xilinx_counter_block=2,xilinx_delay_block=79,xilinx_disregard_subsystem_for_generation_block=4,xilinx_fir_compiler_5_0_block=2,xilinx_gateway_in_block=34,xilinx_gateway_out_block=28,xilinx_inverter_block=10,xilinx_logical_block_block=4,xilinx_multiplier_block=80,xilinx_register_block=64,xilinx_single_port_random_access_memory_block=4,xilinx_system_generator_block=1,xilinx_type_converter_block=28,xilinx_type_reinterpreter_block=41,}";

  signal ce_1_sg_x84: std_logic;
  signal ce_200_sg_x2: std_logic;
  signal ce_logic_1_sg_x0: std_logic;
  signal clk_1_sg_x84: std_logic;
  signal clk_200_sg_x2: std_logic;
  signal concat_y_net_x1: std_logic_vector(15 downto 0);
  signal concat_y_net_x2: std_logic_vector(15 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal delay80_q_net_x10: std_logic_vector(15 downto 0);
  signal delay80_q_net_x12: std_logic_vector(15 downto 0);
  signal delay80_q_net_x14: std_logic_vector(10 downto 0);
  signal delay80_q_net_x6: std_logic_vector(15 downto 0);
  signal delay80_q_net_x9: std_logic_vector(15 downto 0);
  signal delay82_q_net_x5: std_logic_vector(15 downto 0);
  signal delay82_q_net_x6: std_logic_vector(15 downto 0);
  signal delay82_q_net_x7: std_logic_vector(15 downto 0);
  signal delay82_q_net_x8: std_logic_vector(15 downto 0);
  signal delay83_q_net_x3: std_logic_vector(15 downto 0);
  signal delay83_q_net_x4: std_logic_vector(15 downto 0);
  signal edge_op_y_net_x0: std_logic;
  signal fir_compiler_5_0_1_dout_net_x0: std_logic_vector(15 downto 0);
  signal fir_compiler_5_0_dout_net_x0: std_logic_vector(15 downto 0);
  signal gateway_out1_net: std_logic_vector(15 downto 0);
  signal gateway_out1_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out1_x1_net: std_logic_vector(15 downto 0);
  signal gateway_out1_x2_net: std_logic_vector(15 downto 0);
  signal gateway_out_net: std_logic_vector(15 downto 0);
  signal gateway_out_x0_net: std_logic_vector(15 downto 0);
  signal gateway_out_x1_net: std_logic_vector(15 downto 0);
  signal gateway_out_x2_net: std_logic_vector(15 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mixer_addr_op_net: std_logic_vector(10 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal relational_op_net: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;
  signal window_design_adc_user_data_valid_net: std_logic;
  signal window_design_adc_user_datai0_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai1_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai2_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_datai3_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq0_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq1_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq2_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_dataq3_net: std_logic_vector(7 downto 0);
  signal window_design_adc_user_outofrangei0_net: std_logic;
  signal window_design_adc_user_outofrangei1_net: std_logic;
  signal window_design_adc_user_outofrangeq0_net: std_logic;
  signal window_design_adc_user_outofrangeq1_net: std_logic;
  signal window_design_adc_user_sync0_net: std_logic;
  signal window_design_adc_user_sync1_net: std_logic;
  signal window_design_adc_user_sync2_net: std_logic;
  signal window_design_adc_user_sync3_net: std_logic;
  signal window_design_lo_0_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_design_lo_0_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_lo_0_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_design_lo_0_shared_bram_we_net: std_logic;
  signal window_design_lo_1_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_design_lo_1_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_lo_1_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_design_lo_1_shared_bram_we_net: std_logic;
  signal window_design_lo_2_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_design_lo_2_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_lo_2_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_design_lo_2_shared_bram_we_net: std_logic;
  signal window_design_lo_3_shared_bram_addr_net: std_logic_vector(9 downto 0);
  signal window_design_lo_3_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_lo_3_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal window_design_lo_3_shared_bram_we_net: std_logic;
  signal window_design_mixer_cnt_user_data_out_net: std_logic_vector(31 downto 0);
  signal window_design_pol1_window1_dout_user_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_pol1_window1_sync_user_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_pol2_window1_dout_user_data_in_net: std_logic_vector(31 downto 0);
  signal window_design_pol2_window1_sync_user_data_in_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x84 <= ce_1;
  ce_200_sg_x2 <= ce_200;
  ce_logic_1_sg_x0 <= ce_logic_1;
  clk_1_sg_x84 <= clk_1;
  clk_200_sg_x2 <= clk_200;
  window_design_adc_user_data_valid_net <= window_design_adc_user_data_valid;
  window_design_adc_user_datai0_net <= window_design_adc_user_datai0;
  window_design_adc_user_datai1_net <= window_design_adc_user_datai1;
  window_design_adc_user_datai2_net <= window_design_adc_user_datai2;
  window_design_adc_user_datai3_net <= window_design_adc_user_datai3;
  window_design_adc_user_dataq0_net <= window_design_adc_user_dataq0;
  window_design_adc_user_dataq1_net <= window_design_adc_user_dataq1;
  window_design_adc_user_dataq2_net <= window_design_adc_user_dataq2;
  window_design_adc_user_dataq3_net <= window_design_adc_user_dataq3;
  window_design_adc_user_outofrangei0_net <= window_design_adc_user_outofrangei0;
  window_design_adc_user_outofrangei1_net <= window_design_adc_user_outofrangei1;
  window_design_adc_user_outofrangeq0_net <= window_design_adc_user_outofrangeq0;
  window_design_adc_user_outofrangeq1_net <= window_design_adc_user_outofrangeq1;
  window_design_adc_user_sync0_net <= window_design_adc_user_sync0;
  window_design_adc_user_sync1_net <= window_design_adc_user_sync1;
  window_design_adc_user_sync2_net <= window_design_adc_user_sync2;
  window_design_adc_user_sync3_net <= window_design_adc_user_sync3;
  window_design_lo_0_shared_bram_data_out_net <= window_design_lo_0_shared_bram_data_out;
  window_design_lo_1_shared_bram_data_out_net <= window_design_lo_1_shared_bram_data_out;
  window_design_lo_2_shared_bram_data_out_net <= window_design_lo_2_shared_bram_data_out;
  window_design_lo_3_shared_bram_data_out_net <= window_design_lo_3_shared_bram_data_out;
  window_design_mixer_cnt_user_data_out_net <= window_design_mixer_cnt_user_data_out;
  gateway_out <= gateway_out_net;
  gateway_out1 <= gateway_out1_net;
  gateway_out1_x0 <= gateway_out1_x0_net;
  gateway_out1_x1 <= gateway_out1_x1_net;
  gateway_out1_x2 <= gateway_out1_x2_net;
  gateway_out_x0 <= gateway_out_x0_net;
  gateway_out_x1 <= gateway_out_x1_net;
  gateway_out_x2 <= gateway_out_x2_net;
  window_design_lo_0_shared_bram_addr <= window_design_lo_0_shared_bram_addr_net;
  window_design_lo_0_shared_bram_data_in <= window_design_lo_0_shared_bram_data_in_net;
  window_design_lo_0_shared_bram_we <= window_design_lo_0_shared_bram_we_net;
  window_design_lo_1_shared_bram_addr <= window_design_lo_1_shared_bram_addr_net;
  window_design_lo_1_shared_bram_data_in <= window_design_lo_1_shared_bram_data_in_net;
  window_design_lo_1_shared_bram_we <= window_design_lo_1_shared_bram_we_net;
  window_design_lo_2_shared_bram_addr <= window_design_lo_2_shared_bram_addr_net;
  window_design_lo_2_shared_bram_data_in <= window_design_lo_2_shared_bram_data_in_net;
  window_design_lo_2_shared_bram_we <= window_design_lo_2_shared_bram_we_net;
  window_design_lo_3_shared_bram_addr <= window_design_lo_3_shared_bram_addr_net;
  window_design_lo_3_shared_bram_data_in <= window_design_lo_3_shared_bram_data_in_net;
  window_design_lo_3_shared_bram_we <= window_design_lo_3_shared_bram_we_net;
  window_design_pol1_window1_dout_user_data_in <= window_design_pol1_window1_dout_user_data_in_net;
  window_design_pol1_window1_sync_user_data_in <= window_design_pol1_window1_sync_user_data_in_net;
  window_design_pol2_window1_dout_user_data_in <= window_design_pol2_window1_dout_user_data_in_net;
  window_design_pol2_window1_sync_user_data_in <= window_design_pol2_window1_sync_user_data_in_net;

  adc_978c1545ab: entity work.adc_entity_978c1545ab
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      window_design_adc_user_datai0 => window_design_adc_user_datai0_net,
      window_design_adc_user_datai1 => window_design_adc_user_datai1_net,
      window_design_adc_user_datai2 => window_design_adc_user_datai2_net,
      window_design_adc_user_datai3 => window_design_adc_user_datai3_net,
      window_design_adc_user_dataq0 => window_design_adc_user_dataq0_net,
      window_design_adc_user_dataq2 => window_design_adc_user_dataq2_net,
      i0 => reinterpret_output_port_net_x7,
      i1 => reinterpret_output_port_net_x8,
      i2 => reinterpret_output_port_net_x12,
      i3 => reinterpret_output_port_net_x10,
      q0 => reinterpret_output_port_net_x11,
      q2 => reinterpret_output_port_net_x13
    );

  dec_fir1_daab08adbe: entity work.dec_fir_entity_850ff09567
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      imag1 => delay80_q_net_x12,
      imag3 => delay80_q_net_x10,
      real1 => delay82_q_net_x7,
      real2 => delay83_q_net_x4,
      real3 => delay82_q_net_x8,
      sync_in => delay1_q_net_x1,
      dout => concat_y_net_x2,
      sync_out => sync_delay_q_net_x3
    );

  dec_fir_850ff09567: entity work.dec_fir_entity_850ff09567
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      imag1 => delay80_q_net_x6,
      imag3 => delay80_q_net_x9,
      real1 => delay82_q_net_x5,
      real2 => delay83_q_net_x3,
      real3 => delay82_q_net_x6,
      sync_in => delay1_q_net_x1,
      dout => concat_y_net_x1,
      sync_out => sync_delay_q_net_x2
    );

  delay1: entity work.delay_aab7b18c27
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d(0) => edge_op_y_net_x0,
      q(0) => delay1_q_net_x1
    );

  delay80: entity work.delay_f2e1b0f073
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d => mixer_addr_op_net,
      q => delay80_q_net_x14
    );

  fir_compiler_5_0: entity work.xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3
    port map (
      ce => ce_1_sg_x84,
      ce_200 => ce_200_sg_x2,
      ce_logic_1 => ce_logic_1_sg_x0,
      clk => clk_1_sg_x84,
      clk_200 => clk_200_sg_x2,
      clk_logic_1 => clk_1_sg_x84,
      din => concat_y_net_x1,
      src_ce => ce_1_sg_x84,
      src_clk => clk_1_sg_x84,
      dout => fir_compiler_5_0_dout_net_x0
    );

  fir_compiler_5_0_1: entity work.xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3
    port map (
      ce => ce_1_sg_x84,
      ce_200 => ce_200_sg_x2,
      ce_logic_1 => ce_logic_1_sg_x0,
      clk => clk_1_sg_x84,
      clk_200 => clk_200_sg_x2,
      clk_logic_1 => clk_1_sg_x84,
      din => concat_y_net_x2,
      src_ce => ce_1_sg_x84,
      src_clk => clk_1_sg_x84,
      dout => fir_compiler_5_0_1_dout_net_x0
    );

  lo_0_059817023a: entity work.lo_0_entity_059817023a
    port map (
      addr => delay80_q_net_x14,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      pol1 => reinterpret_output_port_net_x7,
      pol2 => reinterpret_output_port_net_x11,
      window_design_lo_0_shared_bram_data_out => window_design_lo_0_shared_bram_data_out_net,
      pol1_im => delay80_q_net_x6,
      pol1_re => delay82_q_net_x5,
      pol2_re => delay83_q_net_x3,
      reinterpret12_x0 => gateway_out_net,
      reinterpret9_x0 => gateway_out1_net,
      shared_bram => window_design_lo_0_shared_bram_addr_net,
      shared_bram_x0 => window_design_lo_0_shared_bram_data_in_net,
      shared_bram_x1 => window_design_lo_0_shared_bram_we_net
    );

  lo_1_6953ea7b99: entity work.lo_1_entity_6953ea7b99
    port map (
      addr => delay80_q_net_x14,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      pol1 => reinterpret_output_port_net_x8,
      window_design_lo_1_shared_bram_data_out => window_design_lo_1_shared_bram_data_out_net,
      pol1_im => delay80_q_net_x9,
      pol1_re => delay82_q_net_x6,
      reinterpret12_x0 => gateway_out_x0_net,
      reinterpret9_x0 => gateway_out1_x0_net,
      shared_bram => window_design_lo_1_shared_bram_addr_net,
      shared_bram_x0 => window_design_lo_1_shared_bram_data_in_net,
      shared_bram_x1 => window_design_lo_1_shared_bram_we_net
    );

  lo_2_bbe0f5f1df: entity work.lo_2_entity_bbe0f5f1df
    port map (
      addr => delay80_q_net_x14,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      pol1 => reinterpret_output_port_net_x12,
      pol2 => reinterpret_output_port_net_x13,
      window_design_lo_2_shared_bram_data_out => window_design_lo_2_shared_bram_data_out_net,
      pol1_im => delay80_q_net_x12,
      pol1_re => delay82_q_net_x7,
      pol2_re => delay83_q_net_x4,
      reinterpret12_x0 => gateway_out_x1_net,
      reinterpret9_x0 => gateway_out1_x1_net,
      shared_bram => window_design_lo_2_shared_bram_addr_net,
      shared_bram_x0 => window_design_lo_2_shared_bram_data_in_net,
      shared_bram_x1 => window_design_lo_2_shared_bram_we_net
    );

  lo_3_cfd3924168: entity work.lo_3_entity_cfd3924168
    port map (
      addr => delay80_q_net_x14,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      pol1 => reinterpret_output_port_net_x10,
      window_design_lo_3_shared_bram_data_out => window_design_lo_3_shared_bram_data_out_net,
      pol1_im => delay80_q_net_x10,
      pol1_re => delay82_q_net_x8,
      reinterpret12_x0 => gateway_out_x2_net,
      reinterpret9_x0 => gateway_out1_x2_net,
      shared_bram => window_design_lo_3_shared_bram_addr_net,
      shared_bram_x0 => window_design_lo_3_shared_bram_data_in_net,
      shared_bram_x1 => window_design_lo_3_shared_bram_we_net
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => window_design_adc_user_sync0_net,
      d1(0) => window_design_adc_user_sync1_net,
      d2(0) => window_design_adc_user_sync2_net,
      d3(0) => window_design_adc_user_sync3_net,
      y(0) => logical_y_net_x0
    );

  mixer_addr: entity work.xlcounter_free_window_design
    generic map (
      core_name0 => "cntr_11_0_194d0b827fc4f25b",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      en => "1",
      rst(0) => relational_op_net,
      op => mixer_addr_op_net
    );

  mixer_cnt_58b831e965: entity work.mixer_cnt_entity_58b831e965
    port map (
      window_design_mixer_cnt_user_data_out => window_design_mixer_cnt_user_data_out_net,
      in_reg => reint1_output_port_net_x0
    );

  pol1_window1_dout_f5d4f52ec9: entity work.pol1_window1_dout_entity_f5d4f52ec9
    port map (
      ce_200 => ce_200_sg_x2,
      clk_200 => clk_200_sg_x2,
      out_reg => fir_compiler_5_0_dout_net_x0,
      cast_gw_x0 => window_design_pol1_window1_dout_user_data_in_net
    );

  pol1_window1_sync_8b9c47d6fa: entity work.pol1_window1_sync_entity_8b9c47d6fa
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      out_reg => sync_delay_q_net_x2,
      cast_gw_x0 => window_design_pol1_window1_sync_user_data_in_net
    );

  pol2_window1_dout_cc1fe328d9: entity work.pol1_window1_dout_entity_f5d4f52ec9
    port map (
      ce_200 => ce_200_sg_x2,
      clk_200 => clk_200_sg_x2,
      out_reg => fir_compiler_5_0_1_dout_net_x0,
      cast_gw_x0 => window_design_pol2_window1_dout_user_data_in_net
    );

  pol2_window1_sync_ccdf93555a: entity work.pol1_window1_sync_entity_8b9c47d6fa
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      out_reg => sync_delay_q_net_x3,
      cast_gw_x0 => window_design_pol2_window1_sync_user_data_in_net
    );

  posedge9_e57028250a: entity work.posedge9_entity_e57028250a
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      in_x0 => logical_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  relational: entity work.relational_8e44c96cea
    port map (
      a => mixer_addr_op_net,
      b => reint1_output_port_net_x0,
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
