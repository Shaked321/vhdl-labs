onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group bcd_to_7seg_tb -radix unsigned /bcd_to_7seg_tb/bcd_in_sig
add wave -noupdate -expand -group bcd_to_7seg_tb -radix hexadecimal /bcd_to_7seg_tb/d_out_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {135276 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {1575 ns}
