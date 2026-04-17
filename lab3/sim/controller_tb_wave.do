onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group controller_tb /controller_tb/clk_sig
add wave -noupdate -expand -group controller_tb /controller_tb/rst_sig
add wave -noupdate -expand -group controller_tb /controller_tb/start_stop_sig
add wave -noupdate -expand -group controller_tb /controller_tb/clr_sig
add wave -noupdate -expand -group controller_tb /controller_tb/lap_sig
add wave -noupdate -expand -group controller_tb /controller_tb/cnt_ena_sig
add wave -noupdate -expand -group controller_tb /controller_tb/cnt_clr_sig
add wave -noupdate -expand -group controller_tb /controller_tb/cnt_lap_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999283 ps} 0}
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
WaveRestoreZoom {4999050 ps} {5000050 ps}
