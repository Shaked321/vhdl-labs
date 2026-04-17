onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group mux_4to1 -color {Green Yellow} /mux_4to1/D_IN1
add wave -noupdate -expand -group mux_4to1 -color {Green Yellow} /mux_4to1/D_IN2
add wave -noupdate -expand -group mux_4to1 -color {Green Yellow} /mux_4to1/D_IN3
add wave -noupdate -expand -group mux_4to1 -color {Green Yellow} /mux_4to1/D_IN4
add wave -noupdate -expand -group mux_4to1 -color Coral /mux_4to1/SEL
add wave -noupdate -expand -group mux_4to1 -color Firebrick /mux_4to1/Q_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1701 ps}
