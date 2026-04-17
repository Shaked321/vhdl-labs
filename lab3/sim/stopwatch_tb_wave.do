onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group stopwatch_tb /stopwatch_tb/clk_sig
add wave -noupdate -expand -group stopwatch_tb /stopwatch_tb/rstn_sig
add wave -noupdate -expand -group stopwatch_tb /stopwatch_tb/start_stop_sig
add wave -noupdate -expand -group stopwatch_tb /stopwatch_tb/clr_sig
add wave -noupdate -expand -group stopwatch_tb /stopwatch_tb/lap_sig
add wave -noupdate -expand -group stopwatch_tb -radix hexadecimal -childformat {{/stopwatch_tb/hund_ones_sig(6) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(5) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(4) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(3) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(2) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(1) -radix hexadecimal} {/stopwatch_tb/hund_ones_sig(0) -radix hexadecimal}} -subitemconfig {/stopwatch_tb/hund_ones_sig(6) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(5) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(4) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(3) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(2) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(1) {-height 15 -radix hexadecimal} /stopwatch_tb/hund_ones_sig(0) {-height 15 -radix hexadecimal}} /stopwatch_tb/hund_ones_sig
add wave -noupdate -expand -group stopwatch_tb -radix hexadecimal /stopwatch_tb/hund_tens_sig
add wave -noupdate -expand -group stopwatch_tb -radix hexadecimal /stopwatch_tb/sec_ones_sig
add wave -noupdate -expand -group stopwatch_tb -radix hexadecimal /stopwatch_tb/sec_tens_sig
add wave -noupdate -group sw_start_stop /stopwatch_tb/dut/u1_SW_START_STOP/CLK
add wave -noupdate -group sw_start_stop /stopwatch_tb/dut/u1_SW_START_STOP/RST
add wave -noupdate -group sw_start_stop /stopwatch_tb/dut/u1_SW_START_STOP/SIG_IN
add wave -noupdate -group sw_start_stop /stopwatch_tb/dut/u1_SW_START_STOP/SIG_OUT
add wave -noupdate -group sw_start_stop /stopwatch_tb/dut/u1_SW_START_STOP/sig_in_d
add wave -noupdate -group sw_clear /stopwatch_tb/dut/u1_SW_CLEAR/CLK
add wave -noupdate -group sw_clear /stopwatch_tb/dut/u1_SW_CLEAR/RST
add wave -noupdate -group sw_clear /stopwatch_tb/dut/u1_SW_CLEAR/SIG_IN
add wave -noupdate -group sw_clear /stopwatch_tb/dut/u1_SW_CLEAR/SIG_OUT
add wave -noupdate -group sw_clear /stopwatch_tb/dut/u1_SW_CLEAR/sig_in_d
add wave -noupdate -group sw_lap /stopwatch_tb/dut/u1_SW_LAP/CLK
add wave -noupdate -group sw_lap /stopwatch_tb/dut/u1_SW_LAP/RST
add wave -noupdate -group sw_lap /stopwatch_tb/dut/u1_SW_LAP/SIG_IN
add wave -noupdate -group sw_lap /stopwatch_tb/dut/u1_SW_LAP/SIG_OUT
add wave -noupdate -group sw_lap /stopwatch_tb/dut/u1_SW_LAP/sig_in_d
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/current_state
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/CLK
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/RST
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/SW_START_STOP
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/SW_CLEAR
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/SW_LAP
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/COUNT_ENABLE
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/COUNT_CLEAR
add wave -noupdate -expand -group controller /stopwatch_tb/dut/u2/COUNT_LAP
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/CLK
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/RST
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/ENA
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/CLEAR
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/PULSE
add wave -noupdate -group pulse_generator /stopwatch_tb/dut/u3/count
add wave -noupdate -group counter /stopwatch_tb/dut/u4/CLK
add wave -noupdate -group counter /stopwatch_tb/dut/u4/RST
add wave -noupdate -group counter /stopwatch_tb/dut/u4/ENA
add wave -noupdate -group counter /stopwatch_tb/dut/u4/CLEAR
add wave -noupdate -group counter /stopwatch_tb/dut/u4/OEn
add wave -noupdate -group counter -radix hexadecimal /stopwatch_tb/dut/u4/HUND_ONES
add wave -noupdate -group counter /stopwatch_tb/dut/u4/HUND_TENS
add wave -noupdate -group counter /stopwatch_tb/dut/u4/SEC_ONES
add wave -noupdate -group counter /stopwatch_tb/dut/u4/SEC_TENS
add wave -noupdate -group counter /stopwatch_tb/dut/u4/hund_cnt_ones
add wave -noupdate -group counter /stopwatch_tb/dut/u4/hund_cnt_tens
add wave -noupdate -group counter /stopwatch_tb/dut/u4/sec_cnt_ones
add wave -noupdate -group counter /stopwatch_tb/dut/u4/sec_cnt_tens
add wave -noupdate -group hund_ones_7seg /stopwatch_tb/dut/u5_HUND_ONES_7SEG/BCD_IN
add wave -noupdate -group hund_ones_7seg /stopwatch_tb/dut/u5_HUND_ONES_7SEG/D_OUT
add wave -noupdate -group hund_tens_7seg /stopwatch_tb/dut/u5_HUND_TENS_7SEG/BCD_IN
add wave -noupdate -group hund_tens_7seg /stopwatch_tb/dut/u5_HUND_TENS_7SEG/D_OUT
add wave -noupdate -group sec_ones_7seg /stopwatch_tb/dut/u5_SEC_ONES_7SEG/BCD_IN
add wave -noupdate -group sec_ones_7seg /stopwatch_tb/dut/u5_SEC_ONES_7SEG/D_OUT
add wave -noupdate -group sec_tens_7seg /stopwatch_tb/dut/u5_SEC_TENS_7SEG/BCD_IN
add wave -noupdate -group sec_tens_7seg /stopwatch_tb/dut/u5_SEC_TENS_7SEG/D_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {378511 ps} 0}
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
WaveRestoreZoom {0 ps} {570225 ps}
