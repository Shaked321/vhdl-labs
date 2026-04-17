vcom ../src/half_adder.vhd   
vsim half_adder				 
do half_adder_wave.do
restart -f		
force A 0 0 ns, 1 20 ns, 0 40 ns, 1 60 ns 
force B 0 0 ns, 1 40 ns
run 100 ns					