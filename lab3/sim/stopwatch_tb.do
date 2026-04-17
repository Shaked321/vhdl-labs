vcom ../src/stopwatch.vhd
vcom ../src/controller.vhd
vcom ../src/pulse_generator.vhd
vcom ../src/sync_diff.vhd
vcom ../src/bcd_to_7seg.vhd
vcom ../src/counter.vhd

vcom ../src/stopwatch_tb.vhd

vsim stopwatch_tb
do stopwatch_tb_wave.do

restart -f
run 5000 ns