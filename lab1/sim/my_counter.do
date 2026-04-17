vcom ../src/my_counter.vhd
vcom ../src/my_counter_tb.vhd
vsim my_counter_tb
do my_counter_tb_wave.do
restart -f
run 1.5 us