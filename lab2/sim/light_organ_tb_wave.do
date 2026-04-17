onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group light_organ_tb /light_organ_tb/clk_sig
add wave -noupdate -expand -group light_organ_tb /light_organ_tb/rst_sig
add wave -noupdate -expand -group light_organ_tb /light_organ_tb/rate_sig
add wave -noupdate -expand -group light_organ_tb /light_organ_tb/leds_sig
add wave -noupdate -expand -group pulse_generator /light_organ_tb/dut/u1/CLK
add wave -noupdate -expand -group pulse_generator /light_organ_tb/dut/u1/RST
add wave -noupdate -expand -group pulse_generator /light_organ_tb/dut/u1/RATE
add wave -noupdate -expand -group pulse_generator /light_organ_tb/dut/u1/PULSE
add wave -noupdate -group direction /light_organ_tb/dut/u2/RST
add wave -noupdate -group direction /light_organ_tb/dut/u2/CLK
add wave -noupdate -group direction /light_organ_tb/dut/u2/Q
add wave -noupdate -group direction /light_organ_tb/dut/u2/L_Rn
add wave -noupdate -group shift_register /light_organ_tb/dut/u3/CLK
add wave -noupdate -group shift_register /light_organ_tb/dut/u3/RST
add wave -noupdate -group shift_register /light_organ_tb/dut/u3/ENA
add wave -noupdate -group shift_register /light_organ_tb/dut/u3/L_Rn
add wave -noupdate -group shift_register /light_organ_tb/dut/u3/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9170456 ps} 0}
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
WaveRestoreZoom {0 ps} {71180209 ps}
