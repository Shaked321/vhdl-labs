vcom ../src/shift_register.vhd
vcom ../src/shift_register_tb.vhd

vsim shift_register_tb

do wave_shift_register_tb.do

run 400 us