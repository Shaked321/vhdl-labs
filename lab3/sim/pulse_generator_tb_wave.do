onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group pulse_generator_tb /pulse_generator_tb/clk_sig
add wave -noupdate -expand -group pulse_generator_tb /pulse_generator_tb/rst_sig
add wave -noupdate -expand -group pulse_generator_tb /pulse_generator_tb/ena_sig
add wave -noupdate -expand -group pulse_generator_tb /pulse_generator_tb/clr_sig
add wave -noupdate -expand -group pulse_generator_tb /pulse_generator_tb/pulse_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2999530 ps} 0}
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
WaveRestoreZoom {0 ps} {3150 ns}
