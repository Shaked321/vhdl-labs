onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group sync_diff_tb /sync_diff_tb/clk_sig
add wave -noupdate -expand -group sync_diff_tb /sync_diff_tb/rst_sig
add wave -noupdate -expand -group sync_diff_tb /sync_diff_tb/sig_in_sig
add wave -noupdate -expand -group sync_diff_tb /sync_diff_tb/sig_out_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999071 ps} 0}
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
