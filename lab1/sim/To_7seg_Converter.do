vcom ../src/To_7seg_Converter.vhd   
vsim To_7seg_Converter				 
do To_7seg_Converter_wave.do	
restart -f	
force BCD_IN 1 0 ns, 3 20 ns, 7 40 ns, 9 60 ns, 10 80 ns
run 100 ns					