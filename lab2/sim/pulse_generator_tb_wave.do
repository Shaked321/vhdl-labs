onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pulse_generator_tb/clk_sig
add wave -noupdate /pulse_generator_tb/rst_sig
add wave -noupdate /pulse_generator_tb/rate_sig
add wave -noupdate /pulse_generator_tb/pulse_sig
add wave -noupdate /pulse_generator_tb/dut/count
add wave -noupdate /pulse_generator_tb/dut/rate_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2999303 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {2595747 ps} {3021277 ps}
