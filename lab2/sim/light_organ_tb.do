vcom ../src/shift_register.vhd
vcom ../src/pulse_generator.vhd
vcom ../src/direction.vhd
vcom ../src/light_organ.vhd
vcom ../src/light_organ_tb.vhd

vsim light_organ_tb

do light_organ_tb_wave.do
restart -f
run 2 ms