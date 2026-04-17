onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/clk_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/rstn_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/key3_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/ser_rx_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/ser_tx_sig
add wave -noupdate -expand -group text_convert_tb -radix hexadecimal /text_convert_tb/sram_addr_sig
add wave -noupdate -expand -group text_convert_tb -radix ascii /text_convert_tb/sram_dq_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sram_we_n_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sram_oe_n_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sram_ub_n_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sram_lb_n_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sram_ce_n_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sim_start_transmit
add wave -noupdate -expand -group text_convert_tb -radix ascii /text_convert_tb/sim_rx_data
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/sim_rx_data_valid_sig
add wave -noupdate -expand -group text_convert_tb /text_convert_tb/led_sig
add wave -noupdate -expand -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_ones_sig
add wave -noupdate -expand -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_tens_sig
add wave -noupdate -expand -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_hunds_sig
add wave -noupdate -expand -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_thous_sig
add wave -noupdate /text_convert_tb/u3_text_convert/u3_sync/SIG_IN
add wave -noupdate /text_convert_tb/u3_text_convert/u3_sync/SIG_OUT
add wave -noupdate /text_convert_tb/u3_text_convert/u2_controller/DATA_FROM_MEM_VALID
add wave -noupdate -radix ascii /text_convert_tb/u3_text_convert/u2_controller/DATA_FROM_MEM
add wave -noupdate -radix ascii /text_convert_tb/u3_text_convert/u2_controller/DATA_TO_MEM
add wave -noupdate /text_convert_tb/u3_text_convert/u2_controller/DATA_TO_MEM_WR
add wave -noupdate -radix ascii /text_convert_tb/u3_text_convert/data_from_mem_to_tx_data
add wave -noupdate -radix ascii /text_convert_tb/u3_text_convert/u1_uart/RX_DATA
add wave -noupdate /text_convert_tb/u3_text_convert/u2_controller/current_state
add wave -noupdate /text_convert_tb/u3_text_convert/u2_controller/chars_cnt
add wave -noupdate /text_convert_tb/u3_text_convert/u2_controller/address_cnt
add wave -noupdate -radix ascii /text_convert_tb/u10_sim_sram/SRAM_DQ
add wave -noupdate -radix hexadecimal /text_convert_tb/u10_sim_sram/SRAM_ADDR
add wave -noupdate /text_convert_tb/u3_text_convert/u1_uart/TX_DONE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {88306282092 ps} 0} {{Cursor 2} {10665115533 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 208
configure wave -valuecolwidth 106
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
configure wave -timelineunits ms
update
WaveRestoreZoom {5720073813 ps} {18845073813 ps}
