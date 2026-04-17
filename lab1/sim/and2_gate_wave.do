onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group and2_gate -color White -itemcolor White /and2_gate/C
add wave -noupdate -expand -group and2_gate /and2_gate/A
add wave -noupdate -expand -group and2_gate /and2_gate/B
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 80
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
WaveRestoreZoom {0 ps} {109167 ps}
