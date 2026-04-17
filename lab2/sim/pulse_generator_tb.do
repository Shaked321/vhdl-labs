vcom ../src/pulse_generator.vhd
vcom ../src/pulse_generator_tb.vhd

vsim pulse_generator_tb

do pulse_generator_tb_wave.do
restart -f
run 3000 ns