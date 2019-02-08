--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_194d0b827fc4f25b.vhd when simulating
-- the core, cntr_11_0_194d0b827fc4f25b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_194d0b827fc4f25b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END cntr_11_0_194d0b827fc4f25b;

ARCHITECTURE cntr_11_0_194d0b827fc4f25b_a OF cntr_11_0_194d0b827fc4f25b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_194d0b827fc4f25b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_194d0b827fc4f25b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 11,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_194d0b827fc4f25b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_194d0b827fc4f25b_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_91a8474c05889d6d.vhd when simulating
-- the core, mult_11_2_91a8474c05889d6d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_91a8474c05889d6d IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END mult_11_2_91a8474c05889d6d;

ARCHITECTURE mult_11_2_91a8474c05889d6d_a OF mult_11_2_91a8474c05889d6d IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_91a8474c05889d6d
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_91a8474c05889d6d USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 5,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 23,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_91a8474c05889d6d
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_91a8474c05889d6d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_f454c284b642f5dc.vhd when simulating
-- the core, addsb_11_0_f454c284b642f5dc. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_f454c284b642f5dc IS
  PORT (
    a : IN STD_LOGIC_VECTOR(42 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(42 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(42 DOWNTO 0)
  );
END addsb_11_0_f454c284b642f5dc;

ARCHITECTURE addsb_11_0_f454c284b642f5dc_a OF addsb_11_0_f454c284b642f5dc IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_f454c284b642f5dc
  PORT (
    a : IN STD_LOGIC_VECTOR(42 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(42 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(42 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_f454c284b642f5dc USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 43,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000000000000000000000000000000000",
      c_b_width => 43,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 43,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_f454c284b642f5dc
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_f454c284b642f5dc_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_41035397f321bdbe.vhd when simulating
-- the core, addsb_11_0_41035397f321bdbe. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_41035397f321bdbe IS
  PORT (
    a : IN STD_LOGIC_VECTOR(44 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(44 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(44 DOWNTO 0)
  );
END addsb_11_0_41035397f321bdbe;

ARCHITECTURE addsb_11_0_41035397f321bdbe_a OF addsb_11_0_41035397f321bdbe IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_41035397f321bdbe
  PORT (
    a : IN STD_LOGIC_VECTOR(44 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(44 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(44 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_41035397f321bdbe USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 45,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000000000000000000000000000000",
      c_b_width => 45,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 45,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_41035397f321bdbe
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_41035397f321bdbe_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_eef67c1cc12cdbba.vhd when simulating
-- the core, addsb_11_0_eef67c1cc12cdbba. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_eef67c1cc12cdbba IS
  PORT (
    a : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(43 DOWNTO 0)
  );
END addsb_11_0_eef67c1cc12cdbba;

ARCHITECTURE addsb_11_0_eef67c1cc12cdbba_a OF addsb_11_0_eef67c1cc12cdbba IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_eef67c1cc12cdbba
  PORT (
    a : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(43 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_eef67c1cc12cdbba USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 44,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000000000000000000000000000000",
      c_b_width => 44,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 44,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_eef67c1cc12cdbba
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_eef67c1cc12cdbba_a;
--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file fr_cmplr_v5_0_46baa3903c43d72d.vhd when simulating
-- the core, fr_cmplr_v5_0_46baa3903c43d72d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fr_cmplr_v5_0_46baa3903c43d72d IS
	port (
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	din: in std_logic_vector(15 downto 0);
	dout: out std_logic_vector(15 downto 0));
END fr_cmplr_v5_0_46baa3903c43d72d;

ARCHITECTURE fr_cmplr_v5_0_46baa3903c43d72d_a OF fr_cmplr_v5_0_46baa3903c43d72d IS
-- synthesis translate_off
component wrapped_fr_cmplr_v5_0_46baa3903c43d72d
	port (
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	din: in std_logic_vector(15 downto 0);
	dout: out std_logic_vector(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fr_cmplr_v5_0_46baa3903c43d72d use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 16,
			c_has_sclr => 0,
			datapath_memtype => 0,
			c_component_name => "fr_cmplr_v5_0_46baa3903c43d72d",
			c_family => "virtex6",
			round_mode => 4,
			output_width => 16,
			sclr_deterministic => 0,
			col_config => "28",
			coef_memtype => 0,
			clock_freq => 1,
			symmetry => 0,
			col_pipe_len => 4,
			c_latency => 35,
			chan_sel_width => 1,
			c_xdevicefamily => "virtex6",
			c_has_nd => 1,
			allow_approx => 0,
			num_channels => 1,
			data_width => 16,
			filter_sel_width => 1,
			sample_freq => 1,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 1,
			data_type => 1,
			accum_width => 42,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 0,
			decim_rate => 200,
			coef_type => 0,
			filter_arch => 1,
			interp_rate => 1,
			num_taps => 5391,
			c_mem_init_file => "fr_cmplr_v5_0_46baa3903c43d72d.mif",
			zero_packing_factor => 1,
			num_paths => 1,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 1,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 1);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fr_cmplr_v5_0_46baa3903c43d72d
		port map (
			clk => clk,
			ce => ce,
			nd => nd,
			rfd => rfd,
			rdy => rdy,
			din => din,
			dout => dout);
-- synthesis translate_on

END fr_cmplr_v5_0_46baa3903c43d72d_a;


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
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_83e473517e is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_83e473517e;


architecture behavior of concat_83e473517e is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e2b989a05e is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e2b989a05e;


architecture behavior of inverter_e2b989a05e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_4389dc89bf is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_4389dc89bf;


architecture behavior of reinterpret_4389dc89bf is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;


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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_b6a1641fbc is
  port (
    a : in std_logic_vector((41 - 1) downto 0);
    b : in std_logic_vector((41 - 1) downto 0);
    s : out std_logic_vector((42 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b6a1641fbc;


architecture behavior of addsub_b6a1641fbc is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_window_design is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_window_design;
architecture behavior of xladdsub_window_design is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_f454c284b642f5dc
    port (
          a: in std_logic_vector(43 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(43 - 1 downto 0)
    );
  end component;
  component addsb_11_0_eef67c1cc12cdbba
    port (
          a: in std_logic_vector(44 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(44 - 1 downto 0)
    );
  end component;
  component addsb_11_0_41035397f321bdbe
    port (
          a: in std_logic_vector(45 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(45 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_f454c284b642f5dc")) generate
    core_instance0: addsb_11_0_f454c284b642f5dc
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_eef67c1cc12cdbba")) generate
    core_instance1: addsb_11_0_eef67c1cc12cdbba
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_41035397f321bdbe")) generate
    core_instance2: addsb_11_0_41035397f321bdbe
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_aeacade12d is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_aeacade12d;


architecture behavior of constant_aeacade12d is
begin
  op <= "0111111111111111111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mult_d0831ce8f1 is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    p : out std_logic_vector((41 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mult_d0831ce8f1;


architecture behavior of mult_d0831ce8f1 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_65_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end behavior;


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
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6a1bb6dda6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6a1bb6dda6;


architecture behavior of constant_6a1bb6dda6 is
begin
  op <= "0000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e18fb31a3d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e18fb31a3d;


architecture behavior of delay_e18fb31a3d is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_8e53793314 is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_8e53793314;


architecture behavior of concat_8e53793314 is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d51df7ac30 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d51df7ac30;


architecture behavior of reinterpret_d51df7ac30 is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;


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
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_92df6a3714 is
  port (
    ip : in std_logic_vector((45 - 1) downto 0);
    op : out std_logic_vector((45 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_92df6a3714;


architecture behavior of shift_92df6a3714 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_36_3_convert <= s2s_cast(ip_1_23, 38, 45, 39);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_36_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c13097e33e is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c13097e33e;


architecture behavior of addsub_c13097e33e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1d98d96b58 is
  port (
    in0 : in std_logic_vector((9 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1d98d96b58;


architecture behavior of concat_1d98d96b58 is
  signal in0_1_23: unsigned((9 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((10 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_4fe5face7f is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_4fe5face7f;


architecture behavior of mux_4fe5face7f is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9306b5127f is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9306b5127f;


architecture behavior of reinterpret_9306b5127f is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_dc139e7f7a is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_dc139e7f7a;


architecture behavior of reinterpret_dc139e7f7a is
  signal input_port_1_40: unsigned((32 - 1) downto 0);
  signal output_port_5_5_force: signed((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_95b0f967bc is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_95b0f967bc;


architecture behavior of constant_95b0f967bc is
begin
  op <= "000000000000000000";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult_window_design is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult_window_design;
architecture behavior of xlmult_window_design is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_91a8474c05889d6d
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_91a8474c05889d6d:
    component is true;
  attribute fpga_dont_touch of mult_11_2_91a8474c05889d6d:
    component is "true";
  attribute box_type of mult_11_2_91a8474c05889d6d:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_91a8474c05889d6d")) generate
    core_instance0: mult_11_2_91a8474c05889d6d
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_151459306d is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_151459306d;


architecture behavior of reinterpret_151459306d is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_ebec135d8a is
  port (
    d : in std_logic_vector((8 - 1) downto 0);
    q : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_ebec135d8a;


architecture behavior of delay_ebec135d8a is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_4246ea65a9 is
  port (
    d : in std_logic_vector((16 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_4246ea65a9;


architecture behavior of delay_4246ea65a9 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_2b0feb00fb is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_2b0feb00fb;


architecture behavior of delay_2b0feb00fb is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_c5d4d59b73 is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_c5d4d59b73;


architecture behavior of reinterpret_c5d4d59b73 is
  signal input_port_1_40: unsigned((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_9bb25f1d93 is
  port (
    d : in std_logic_vector((16 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_9bb25f1d93;


architecture behavior of delay_9bb25f1d93 is
  signal d_1_22: std_logic_vector((16 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;


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
use work.conv_pkg.all;
entity xlpassthrough is
    generic (
        din_width    : integer := 16;
        dout_width   : integer := 16
        );
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlpassthrough;
architecture passthrough_arch of xlpassthrough is
begin
  dout <= din;
end passthrough_arch;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_7025463ea8 is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_7025463ea8;


architecture behavior of reinterpret_7025463ea8 is
  signal input_port_1_40: signed((16 - 1) downto 0);
  signal output_port_5_5_force: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_21355083c1 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_21355083c1;


architecture behavior of delay_21355083c1 is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_112d91c147 is
  port (
    input_port : in std_logic_vector((1 - 1) downto 0);
    output_port : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_112d91c147;


architecture behavior of reinterpret_112d91c147 is
  signal input_port_1_40: boolean;
  signal output_port_7_5_convert: unsigned((1 - 1) downto 0);
begin
  input_port_1_40 <= ((input_port) = "1");
  output_port_7_5_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(input_port_1_40)), 0, 1, 0);
  output_port <= unsigned_to_std_logic_vector(output_port_7_5_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_aab7b18c27 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_aab7b18c27;


architecture behavior of delay_aab7b18c27 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (6 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0',
    '0',
    '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 5 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_f2e1b0f073 is
  port (
    d : in std_logic_vector((11 - 1) downto 0);
    q : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_f2e1b0f073;


architecture behavior of delay_f2e1b0f073 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a6d07705dd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a6d07705dd;


architecture behavior of logical_a6d07705dd is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8e44c96cea is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8e44c96cea;


architecture behavior of relational_8e44c96cea is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_12_12 <= u2u_cast(a_1_31, 0, 32, 0);
  result_12_3_rel <= cast_12_12 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_window_design is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_window_design ;
architecture behavior of xlcounter_free_window_design is
  component cntr_11_0_194d0b827fc4f25b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_194d0b827fc4f25b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_194d0b827fc4f25b:
    component is "true";
  attribute box_type of cntr_11_0_194d0b827fc4f25b:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_194d0b827fc4f25b")) generate
    core_instance0: cntr_11_0_194d0b827fc4f25b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3 is 
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
end xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3;


architecture behavior of xlfir_compiler_72c9f64b9625c0a72ab140f38cba98f3  is
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
signal dout_ps_net: std_logic_vector(15 downto 0) := (others=>'0');
signal rdy_ps_net: std_logic := '0';
signal rdy_ps_net_captured: std_logic := '0';
signal rdy_ps_net_or_captured_net: std_logic := '0';
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
        clr => '0',
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
        clr => '0',
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
        i(0) => '1',
        ce => rdy_ps_net,
        clr => '0',
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
end  behavior;

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
