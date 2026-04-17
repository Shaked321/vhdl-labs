onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group half_adder_process -color Blue -label A /half_adder_process/A
add wave -noupdate -expand -group half_adder_process -color Red -label B /half_adder_process/B
add wave -noupdate -expand -group half_adder_process -color Yellow -label SUM /half_adder_process/SUM
add wave -noupdate -expand -group half_adder_process -color Green -label CARRY /half_adder_process/CARRY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 219
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
