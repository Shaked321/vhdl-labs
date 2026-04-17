vcom ../src/bcd_to_7seg.vhd
vcom ../src/bcd_to_7seg_tb.vhd

vsim bcd_to_7seg_tb
do bcd_to_7seg_tb_wave.do

restart -f
run 1500 ns