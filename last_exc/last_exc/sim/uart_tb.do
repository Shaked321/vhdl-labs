
vcom ../src/uart.vhd
vcom ../src/uart_rx.vhd
vcom ../src/uart_tx.vhd
vcom ../src/uart_tb.vhd
vcom ../src/sim_uart_tx.vhd
vcom ../src/sim_uart_rx.vhd
vcom ../src/synchronizer.vhd

vsim uart_tb

do uart_tb_wave.do
run 20 ms