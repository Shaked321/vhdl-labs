
vcom ../src/text_convert.vhd
vcom ../src/uart.vhd
vcom ../src/uart_rx.vhd
vcom ../src/uart_tx.vhd
vcom ../src/sync_diff.vhd
vcom ../src/bin2bcd_12bit_sync.vhd
vcom ../src/controller.vhd
vcom ../src/synchronizer.vhd
vcom ../src/bcd_to_7seg.vhd
vcom ../src/sim_sram.vhd
vcom ../src/sim_uart_tx.vhd
vcom ../src/sim_uart_rx.vhd
vcom ../src/text_convert_tb.vhd

vsim text_convert_tb
do text_convert_tb_wave.do

run 50 ms