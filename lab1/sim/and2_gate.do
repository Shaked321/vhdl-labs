vcom ../src/and2_gate.vhd
vsim and2_gate
do and2_gate_wave.do
restart -f
force A 0 0 ns, 1 20 ns, 0 40 ns, 1 60 ns
force B 0 0 ns, 1 40 ns
run 100 ns