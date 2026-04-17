vcom ../src/Sync_Derivative.vhd
vsim Sync_Derivative
do Sync_Derivative_wave.do
restart -f
force CLK 1 0ns, 0 {50ns} -r 100ns
force D_IN 1 0 ns ,0 300 ns
force RST 0 ns,1 30ns, 0 40 ns
run 500 ns

