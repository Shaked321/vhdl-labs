onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group two_flop_synchronizer -color Red /two_flop_synchronizer/D_IN
add wave -noupdate -expand -group two_flop_synchronizer -color Yellow /two_flop_synchronizer/CLK
add wave -noupdate -expand -group two_flop_synchronizer /two_flop_synchronizer/RST
add wave -noupdate -expand -group two_flop_synchronizer -color Green /two_flop_synchronizer/Q_D
add wave -noupdate -expand -group two_flop_synchronizer -color White /two_flop_synchronizer/Q_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18163 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
configure wave -valuecolwidth 42
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
