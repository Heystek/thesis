#
# Created by System Generator     Wed Feb  6 15:42:43 2019
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {window_design_cw}
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
    set Frequency {160}
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
        {{window_design_cw.vhd} -view All}
        {{window_design.vhd} -view All}
        {{window_design_cw.ucf}}
        {{window_design_cw.xdc}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_16.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_21.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_19.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_24.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dfilt_decode_rom.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72d.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_7.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_23.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_22.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_10.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_25.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_17.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_18.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_20.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_9.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_0.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_26.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_46baa3903c43d72dCOEFF_auto0_15.mif}}
        {{/home/heystek/heystek_thesis/thesis/window_design.slx}}
    }
    set TopLevelModule {window_design_cw}
    set SynthesisConstraintsFile {window_design_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
