vcom ../src/Register_8bit.vhd
vsim Register_8bit
do Register_8bit_wave.do
restart -f
force CLK 1 0ns, 0 {50ns} -r 100ns
force D_IN 11111111 0 ns ,00001111 100 ns,01010101 200 ns
force RST 0 ns,1 30ns, 0 40 ns,1 160 ns, 0 170 ns
force ENA 0 ns,1 100 ns
run 500 ns

