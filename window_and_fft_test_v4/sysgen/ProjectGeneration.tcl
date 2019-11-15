#
# Created by System Generator     Fri Aug 16 12:14:49 2019
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {window_and_fft_test_v4_cw}
    set DSPFamily {Virtex6}
    set DSPDevice {xc6vsx475t}
    set DSPPackage {ff1759}
    set DSPSpeed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{window_and_fft_test_v4_cw.vhd} -view All}
        {{window_and_fft_test_v4.vhd} -view All}
        {{window_and_fft_test_v4_cw.ucf}}
        {{window_and_fft_test_v4_cw.xdc}}
        {{bmg_72_2d8e9bcfdb574c10.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_3.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_9.mif}}
        {{bmg_72_8e2f9d152d14263e.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_10.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_8.mif}}
        {{dmg_72_06baee6e81a49674.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_4.mif}}
        {{bmg_72_a4cff0d500ff7adb.mif}}
        {{bmg_72_88a7df48df176590.mif}}
        {{dmg_72_61c575268fb396d0.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_0.mif}}
        {{bmg_72_25cb9ebb8094dade.mif}}
        {{bmg_72_fba27241bcd4df38.mif}}
        {{bmg_72_ed1b80fcdf1c3a46.mif}}
        {{bmg_72_3f3c61289e7ba7ea.mif}}
        {{bmg_72_b3a5d690118dc305.mif}}
        {{bmg_72_a6d704d36eb848a5.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_0.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_5.mif}}
        {{bmg_72_3673c2b46bfb142f.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_7.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4filt_decode_rom.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_1.mif}}
        {{bmg_72_5b8023f54686b589.mif}}
        {{bmg_72_f77670697183b527.mif}}
        {{bmg_72_146e01525f281df8.mif}}
        {{bmg_72_71453be4ec33d4ae.mif}}
        {{bmg_72_fc83b5c52a6ea9e3.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4.mif}}
        {{bmg_72_9a187dd9cd5a0cfe.mif}}
        {{bmg_72_51873a049072c953.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_7.mif}}
        {{bmg_72_d53572f04cfc7154.mif}}
        {{bmg_72_b7d413d71af73706.mif}}
        {{bmg_72_92d96d23faa10f27.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_6.mif}}
        {{bmg_72_e9a0d6c7631bff5b.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_5.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_10.mif}}
        {{bmg_72_ffcaf565dc759de1.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_9.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto0_6.mif}}
        {{bmg_72_5d708e36ddb23a80.mif}}
        {{dmg_72_28098a4ce465921e.mif}}
        {{bmg_72_d5319d7881548c22.mif}}
        {{dmg_72_3edbd32a5305b92d.mif}}
        {{fr_cmplr_v5_0_5d372747691e47c4COEFF_auto1_2.mif}}
        {{/home/heystek/heystek_thesis/thesis/window_and_fft_test_v4.slx}}
    }
    set TopLevelModule {window_and_fft_test_v4_cw}
    set SynthesisConstraintsFile {window_and_fft_test_v4_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
