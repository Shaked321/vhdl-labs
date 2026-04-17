vcom ../src/sync_diff.vhd
vcom ../src/sync_diff_tb.vhd

vsim sync_diff_tb
do sync_diff_tb_wave.do

restart -f
run 1500 ns