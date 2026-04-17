vcom ../src/mux_4to1.vhd   
vsim mux_4to1				 
do mux_4to1_wave.do	
restart -f	
force D_IN1 00000001 0 ns, 00010000 40 ns
force D_IN2 00000010 0 ns, 00100000 40 ns 
force D_IN3 00000100 0 ns, 01000000 40 ns
force D_IN4 00001000 0 ns, 10000000 40 ns
force SEL   00 0 ns, 01 10 ns, 10 20 ns, 11 30 ns, 00 40 ns, 01 50 ns, 10 60 ns, 11 70 ns, zz 80 ns
run 100 ns					