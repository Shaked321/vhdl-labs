onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group half_adder -color White /half_adder/A
add wave -noupdate -expand -group half_adder -color Yellow /half_adder/B
add wave -noupdate -expand -group half_adder -color Goldenrod /half_adder/SUM
add wave -noupdate -expand -group half_adder -color Coral /half_adder/CARRY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {105 ns}
