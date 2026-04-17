onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Sync_Derivative /sync_derivative/D_IN
add wave -noupdate -expand -group Sync_Derivative /sync_derivative/CLK
add wave -noupdate -expand -group Sync_Derivative /sync_derivative/RST
add wave -noupdate -expand -group Sync_Derivative /sync_derivative/Q1_D
add wave -noupdate -expand -group Sync_Derivative /sync_derivative/Q2_D
add wave -noupdate -expand -group Sync_Derivative -color White /sync_derivative/S_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {257530 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 188
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
WaveRestoreZoom {0 ps} {525 ns}
