onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group To_7seg_Converter -color White /to_7seg_converter/BCD_IN
add wave -noupdate -expand -group To_7seg_Converter -color Blue /to_7seg_converter/D_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 199
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
WaveRestoreZoom {0 ps} {1487 ps}
