copy implementation\system.bit ..\bit_files\window_and_fft_test_v4_2019_Aug_16_1218.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\window_and_fft_test_v4_2019_Aug_16_1218.bof
copy design_info.tab ..\bit_files\window_and_fft_test_v4_2019_Aug_16_1218.info
