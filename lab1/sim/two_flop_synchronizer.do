vcom ../src/two_flop_synchronizer.vhd
vsim two_flop_synchronizer 
do two_flop_synchronizer_wave.do
restart -f
force CLK 1 0ns, 0 {50ns} -r 100ns
force D_IN 0 0 ns, 1 20 ns, 0 40 ns, 1 100 ns,0 200 ns,1 375 ns , 0 475 ns
force RST 0 ns,1 575 ns ,0 585 ns
run 700 ns

