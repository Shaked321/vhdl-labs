onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group uart /uart_tb/u3/CLK
add wave -noupdate -group uart /uart_tb/u3/RST
add wave -noupdate -group uart /uart_tb/u3/SER_RX
add wave -noupdate -group uart -radix ascii /uart_tb/u3/TX_DATA
add wave -noupdate -group uart /uart_tb/u3/START_TX
add wave -noupdate -group uart -radix ascii /uart_tb/u3/RX_DATA
add wave -noupdate -group uart /uart_tb/u3/RX_DATA_VAILD
add wave -noupdate -group uart /uart_tb/u3/SER_TX
add wave -noupdate -group uart /uart_tb/u3/TX_DONE
add wave -noupdate -group uart /uart_tb/u3/ser_rx_sync
add wave -noupdate -group uart_tx -radix ascii /uart_tb/u3/u1_tx/TX_DATA
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/TX_START
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/SER_TX
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/TX_DONE
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/current_state
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/clk_cnt
add wave -noupdate -group uart_tx /uart_tb/u3/u1_tx/bit_cnt
add wave -noupdate -group uart_rx /uart_tb/u3/u2_rx/SER_RX
add wave -noupdate -group uart_rx -radix ascii /uart_tb/u3/u2_rx/RX_DATA
add wave -noupdate -group uart_rx /uart_tb/u3/u2_rx/RX_DATA_VAILD
add wave -noupdate -group uart_rx /uart_tb/u3/u2_rx/current_state
add wave -noupdate -group uart_rx /uart_tb/u3/u2_rx/clk_cnt
add wave -noupdate -group uart_rx /uart_tb/u3/u2_rx/bit_cnt
add wave -noupdate -group rx_sync /uart_tb/u3/u3_rx_sync/SIG_IN
add wave -noupdate -group rx_sync /uart_tb/u3/u3_rx_sync/SIG_OUT
add wave -noupdate -group uart_rx_oren /uart_tb/u1_sim_rx/SER_IN
add wave -noupdate -group uart_rx_oren -radix ascii /uart_tb/u1_sim_rx/PAR_DATA
add wave -noupdate -group uart_rx_oren /uart_tb/u1_sim_rx/PAR_DATA_VALID
add wave -noupdate -group uart_tx_oren /uart_tb/u2_sim_tx/START_TRANSMIT
add wave -noupdate -group uart_tx_oren /uart_tb/u2_sim_tx/SER_OUT
add wave -noupdate -expand -group uart_tb /uart_tb/clk_sig
add wave -noupdate -expand -group uart_tb /uart_tb/rstn_sig
add wave -noupdate -expand -group uart_tb /uart_tb/ser_rx_sig
add wave -noupdate -expand -group uart_tb /uart_tb/ser_tx_to_ser_in_sig
add wave -noupdate -expand -group uart_tb -radix ascii /uart_tb/rx_tx_data_sig
add wave -noupdate -expand -group uart_tb /uart_tb/start_tx_rx_data_valid_sig
add wave -noupdate -expand -group uart_tb /uart_tb/sim_start_transmit
add wave -noupdate -expand -group uart_tb -radix ascii /uart_tb/sim_rx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {447551646 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 116
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
WaveRestoreZoom {0 ps} {15191891968 ps}
