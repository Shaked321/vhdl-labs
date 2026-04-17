onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group uart_rx_oren /text_convert_tb/u1_sim_rx/SER_IN
add wave -noupdate -group uart_rx_oren -radix ascii /text_convert_tb/u1_sim_rx/PAR_DATA
add wave -noupdate -group uart_rx_oren /text_convert_tb/u1_sim_rx/PAR_DATA_VALID
add wave -noupdate -group uart_tx_oren /text_convert_tb/u2_sim_tx/START_TRANSMIT
add wave -noupdate -group uart_tx_oren /text_convert_tb/u2_sim_tx/SER_OUT
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/CLK
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/RSTn
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SER_RX
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SER_TX
add wave -noupdate -group text_convert -radix unsigned /text_convert_tb/u3_text_convert/SRAM_ADDR
add wave -noupdate -group text_convert -radix ascii /text_convert_tb/u3_text_convert/SRAM_DQ
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SRAM_WE_N
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SRAM_OE_N
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SRAM_CE_N
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SRAM_UB_N
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/SRAM_LB_N
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/MODE
add wave -noupdate -group text_convert /text_convert_tb/u3_text_convert/LED
add wave -noupdate -group text_convert -radix hexadecimal /text_convert_tb/u3_text_convert/NUM_ONES
add wave -noupdate -group text_convert -radix hexadecimal /text_convert_tb/u3_text_convert/NUM_TENS
add wave -noupdate -group text_convert -radix hexadecimal /text_convert_tb/u3_text_convert/NUM_HUNDS
add wave -noupdate -group text_convert -radix hexadecimal /text_convert_tb/u3_text_convert/NUM_THOUS
add wave -noupdate -group sram_oren -radix unsigned /text_convert_tb/u10_sim_sram/SRAM_ADDR
add wave -noupdate -group sram_oren -radix ascii /text_convert_tb/u10_sim_sram/SRAM_DQ
add wave -noupdate -group sram_oren /text_convert_tb/u10_sim_sram/SRAM_WE_N
add wave -noupdate -group sram_oren /text_convert_tb/u10_sim_sram/SRAM_OE_N
add wave -noupdate -group sram_oren /text_convert_tb/u10_sim_sram/SRAM_UB_N
add wave -noupdate -group sram_oren /text_convert_tb/u10_sim_sram/SRAM_LB_N
add wave -noupdate -group sram_oren /text_convert_tb/u10_sim_sram/SRAM_CE_N
add wave -noupdate -group text_convert_tb /text_convert_tb/clk_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/rstn_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/key3_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/ser_rx_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/ser_tx_sig
add wave -noupdate -group text_convert_tb -radix unsigned /text_convert_tb/sram_addr_sig
add wave -noupdate -group text_convert_tb -radix ascii /text_convert_tb/sram_dq_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sram_we_n_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sram_oe_n_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sram_ub_n_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sram_lb_n_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sram_ce_n_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/sim_start_transmit
add wave -noupdate -group text_convert_tb -radix ascii /text_convert_tb/sim_rx_data
add wave -noupdate -group text_convert_tb /text_convert_tb/sim_rx_data_valid_sig
add wave -noupdate -group text_convert_tb /text_convert_tb/led_sig
add wave -noupdate -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_ones_sig
add wave -noupdate -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_tens_sig
add wave -noupdate -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_hunds_sig
add wave -noupdate -group text_convert_tb -radix hexadecimal /text_convert_tb/bcd_out_thous_sig
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/CLK
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/RST
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/SER_RX
add wave -noupdate -group uart -radix ascii /text_convert_tb/u3_text_convert/u1_uart/TX_DATA
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/START_TX
add wave -noupdate -group uart -radix ascii /text_convert_tb/u3_text_convert/u1_uart/RX_DATA
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/RX_DATA_VAILD
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/SER_TX
add wave -noupdate -group uart /text_convert_tb/u3_text_convert/u1_uart/TX_DONE
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/CLK
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/RST
add wave -noupdate -expand -group controller -radix unsigned /text_convert_tb/u3_text_convert/u2_controller/SRAM_ADDR
add wave -noupdate -expand -group controller -radix ascii /text_convert_tb/u3_text_convert/u2_controller/SRAM_DQ
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/SRAM_WE_N
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/SRAM_OE_N
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/SRAM_CE_N
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/SRAM_UB_N
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/SRAM_LB_N
add wave -noupdate -expand -group controller -radix ascii /text_convert_tb/u3_text_convert/u2_controller/DATA_TO_MEM
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/DATA_TO_MEM_WR
add wave -noupdate -expand -group controller -radix ascii /text_convert_tb/u3_text_convert/u2_controller/DATA_FROM_MEM
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/DATA_FROM_MEM_VALID
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/UART_TX_DONE
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/MODE_PRESSED
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/DISPLAY_SHUTDOWNn
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/ONES
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/TENTHS
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/HUNDREDTHS
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/THOUSANDS
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/LED
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/current_state
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/chars_cnt
add wave -noupdate -expand -group controller /text_convert_tb/u3_text_convert/u2_controller/address_cnt
add wave -noupdate -group mode_sync /text_convert_tb/u3_text_convert/u3_mode_sync/CLK
add wave -noupdate -group mode_sync /text_convert_tb/u3_text_convert/u3_mode_sync/RST
add wave -noupdate -group mode_sync /text_convert_tb/u3_text_convert/u3_mode_sync/SIG_IN
add wave -noupdate -group mode_sync /text_convert_tb/u3_text_convert/u3_mode_sync/SIG_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4094 ps} 0} {{Cursor 2} {12991237074 ps} 1}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {120164 ps}
