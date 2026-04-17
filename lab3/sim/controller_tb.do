vcom ../src/controller.vhd
vcom ../src/controller_tb.vhd

vsim controller_tb
do controller_tb_wave.do

restart -f
run 5000 ns