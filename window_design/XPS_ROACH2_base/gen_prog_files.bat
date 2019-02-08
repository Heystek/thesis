copy implementation\system.bit ..\bit_files\window_design_2019_Feb_06_1543.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\window_design_2019_Feb_06_1543.bof
copy design_info.tab ..\bit_files\window_design_2019_Feb_06_1543.info
