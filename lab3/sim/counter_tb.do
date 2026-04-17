
vcom ../src/counter.vhd
vcom ../src/counter_tb.vhd

vsim counter_tb
do counter_tb_wave.do

restart -f
run 5000 ns