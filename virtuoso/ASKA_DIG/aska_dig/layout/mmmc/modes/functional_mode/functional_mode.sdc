###############################################################
#  Generated by:      Cadence Innovus 21.18-s099_1
#  OS:                Linux x86_64(Host ID phoenix)
#  Generated on:      Mon Jul 15 19:03:39 2024
#  Design:            aska_dig
#  Command:           saveDesign -cellview {ASKA_DIG aska_dig layout}
###############################################################
current_design aska_dig
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
create_clock [get_ports {SPI_Clk}]  -name SPI_CLK -period 20.000000 -waveform {0.000000 10.000000}
create_clock [get_ports {clk}]  -name CLK -period 20.000000 -waveform {0.000000 10.000000}
set_propagated_clock  [get_ports {SPI_Clk}]
set_propagated_clock  [get_ports {clk}]
set_load -pin_load -max  1  [get_ports {enable}]
set_load -pin_load -min  0.01  [get_ports {enable}]
set_load -pin_load -max  1  [get_ports {pulse_active}]
set_load -pin_load -min  0.01  [get_ports {pulse_active}]
set_load -pin_load -max  1  [get_ports {DAC[5]}]
set_load -pin_load -min  0.01  [get_ports {DAC[5]}]
set_load -pin_load -max  1  [get_ports {DAC[4]}]
set_load -pin_load -min  0.01  [get_ports {DAC[4]}]
set_load -pin_load -max  1  [get_ports {DAC[3]}]
set_load -pin_load -min  0.01  [get_ports {DAC[3]}]
set_load -pin_load -max  1  [get_ports {DAC[2]}]
set_load -pin_load -min  0.01  [get_ports {DAC[2]}]
set_load -pin_load -max  1  [get_ports {DAC[1]}]
set_load -pin_load -min  0.01  [get_ports {DAC[1]}]
set_load -pin_load -max  1  [get_ports {DAC[0]}]
set_load -pin_load -min  0.01  [get_ports {DAC[0]}]
set_load -pin_load -max  1  [get_ports {down_switches[31]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[31]}]
set_load -pin_load -max  1  [get_ports {down_switches[30]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[30]}]
set_load -pin_load -max  1  [get_ports {down_switches[29]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[29]}]
set_load -pin_load -max  1  [get_ports {down_switches[28]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[28]}]
set_load -pin_load -max  1  [get_ports {down_switches[27]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[27]}]
set_load -pin_load -max  1  [get_ports {down_switches[26]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[26]}]
set_load -pin_load -max  1  [get_ports {down_switches[25]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[25]}]
set_load -pin_load -max  1  [get_ports {down_switches[24]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[24]}]
set_load -pin_load -max  1  [get_ports {down_switches[23]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[23]}]
set_load -pin_load -max  1  [get_ports {down_switches[22]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[22]}]
set_load -pin_load -max  1  [get_ports {down_switches[21]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[21]}]
set_load -pin_load -max  1  [get_ports {down_switches[20]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[20]}]
set_load -pin_load -max  1  [get_ports {down_switches[19]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[19]}]
set_load -pin_load -max  1  [get_ports {down_switches[18]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[18]}]
set_load -pin_load -max  1  [get_ports {down_switches[17]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[17]}]
set_load -pin_load -max  1  [get_ports {down_switches[16]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[16]}]
set_load -pin_load -max  1  [get_ports {down_switches[15]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[15]}]
set_load -pin_load -max  1  [get_ports {down_switches[14]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[14]}]
set_load -pin_load -max  1  [get_ports {down_switches[13]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[13]}]
set_load -pin_load -max  1  [get_ports {down_switches[12]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[12]}]
set_load -pin_load -max  1  [get_ports {down_switches[11]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[11]}]
set_load -pin_load -max  1  [get_ports {down_switches[10]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[10]}]
set_load -pin_load -max  1  [get_ports {down_switches[9]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[9]}]
set_load -pin_load -max  1  [get_ports {down_switches[8]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[8]}]
set_load -pin_load -max  1  [get_ports {down_switches[7]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[7]}]
set_load -pin_load -max  1  [get_ports {down_switches[6]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[6]}]
set_load -pin_load -max  1  [get_ports {down_switches[5]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[5]}]
set_load -pin_load -max  1  [get_ports {down_switches[4]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[4]}]
set_load -pin_load -max  1  [get_ports {down_switches[3]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[3]}]
set_load -pin_load -max  1  [get_ports {down_switches[2]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[2]}]
set_load -pin_load -max  1  [get_ports {down_switches[1]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[1]}]
set_load -pin_load -max  1  [get_ports {down_switches[0]}]
set_load -pin_load -min  0.01  [get_ports {down_switches[0]}]
set_load -pin_load -max  1  [get_ports {up_switches[31]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[31]}]
set_load -pin_load -max  1  [get_ports {up_switches[30]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[30]}]
set_load -pin_load -max  1  [get_ports {up_switches[29]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[29]}]
set_load -pin_load -max  1  [get_ports {up_switches[28]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[28]}]
set_load -pin_load -max  1  [get_ports {up_switches[27]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[27]}]
set_load -pin_load -max  1  [get_ports {up_switches[26]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[26]}]
set_load -pin_load -max  1  [get_ports {up_switches[25]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[25]}]
set_load -pin_load -max  1  [get_ports {up_switches[24]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[24]}]
set_load -pin_load -max  1  [get_ports {up_switches[23]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[23]}]
set_load -pin_load -max  1  [get_ports {up_switches[22]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[22]}]
set_load -pin_load -max  1  [get_ports {up_switches[21]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[21]}]
set_load -pin_load -max  1  [get_ports {up_switches[20]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[20]}]
set_load -pin_load -max  1  [get_ports {up_switches[19]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[19]}]
set_load -pin_load -max  1  [get_ports {up_switches[18]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[18]}]
set_load -pin_load -max  1  [get_ports {up_switches[17]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[17]}]
set_load -pin_load -max  1  [get_ports {up_switches[16]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[16]}]
set_load -pin_load -max  1  [get_ports {up_switches[15]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[15]}]
set_load -pin_load -max  1  [get_ports {up_switches[14]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[14]}]
set_load -pin_load -max  1  [get_ports {up_switches[13]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[13]}]
set_load -pin_load -max  1  [get_ports {up_switches[12]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[12]}]
set_load -pin_load -max  1  [get_ports {up_switches[11]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[11]}]
set_load -pin_load -max  1  [get_ports {up_switches[10]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[10]}]
set_load -pin_load -max  1  [get_ports {up_switches[9]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[9]}]
set_load -pin_load -max  1  [get_ports {up_switches[8]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[8]}]
set_load -pin_load -max  1  [get_ports {up_switches[7]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[7]}]
set_load -pin_load -max  1  [get_ports {up_switches[6]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[6]}]
set_load -pin_load -max  1  [get_ports {up_switches[5]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[5]}]
set_load -pin_load -max  1  [get_ports {up_switches[4]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[4]}]
set_load -pin_load -max  1  [get_ports {up_switches[3]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[3]}]
set_load -pin_load -max  1  [get_ports {up_switches[2]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[2]}]
set_load -pin_load -max  1  [get_ports {up_switches[1]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[1]}]
set_load -pin_load -max  1  [get_ports {up_switches[0]}]
set_load -pin_load -min  0.01  [get_ports {up_switches[0]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {IC_addr[1]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {IC_addr[1]}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {IC_addr[1]}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {IC_addr[1]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {IC_addr[0]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {IC_addr[0]}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {IC_addr[0]}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {IC_addr[0]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {SPI_MOSI}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {SPI_MOSI}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {SPI_MOSI}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {SPI_MOSI}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {SPI_Clk}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {SPI_Clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {SPI_Clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {SPI_Clk}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {SPI_CS}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {SPI_CS}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {SPI_CS}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {SPI_CS}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {porborn}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {porborn}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {porborn}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {porborn}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {reset_l}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {reset_l}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {reset_l}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {reset_l}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {clk}]
set_wire_load_mode enclosed
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {reset_l}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {reset_l}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {porborn}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {porborn}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {IC_addr[0]}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {IC_addr[0]}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {SPI_CS}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {SPI_CS}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {SPI_MOSI}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {SPI_MOSI}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {IC_addr[1]}]
set_input_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {SPI_CLK}] [get_ports {IC_addr[1]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[20]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[20]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[13]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[13]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[3]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[3]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[31]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[31]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[24]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[24]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[17]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[17]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[0]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[0]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[8]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[8]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[25]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[25]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[18]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[18]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[29]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[29]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[8]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[8]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {enable}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {enable}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[5]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[5]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[20]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[20]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[13]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[13]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[4]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[4]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[21]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[21]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[14]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[14]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[25]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[25]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[18]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[18]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[4]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[4]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[1]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[1]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[9]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[9]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[26]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[26]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[19]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[19]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[0]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[0]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[9]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[9]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[10]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[10]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[21]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[21]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[14]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[14]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[0]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[0]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[5]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[5]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[22]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[22]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[15]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[15]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[5]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[5]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[26]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[26]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[19]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[19]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[2]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[2]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[10]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[10]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {pulse_active}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {pulse_active}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[27]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[27]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[1]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[1]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[11]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[11]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[22]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[22]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[15]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[15]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[1]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[1]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[6]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[6]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[30]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[30]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[23]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[23]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[16]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[16]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[27]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[27]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[6]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[6]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[3]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[3]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[11]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[11]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[28]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[28]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[2]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[2]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[12]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[12]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[30]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[30]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[23]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[23]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[16]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[16]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[2]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[2]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[7]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[7]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[31]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[31]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[24]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[24]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[17]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[17]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[7]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[7]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[28]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[28]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[4]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {DAC[4]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[12]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {down_switches[12]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[29]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[29]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[3]}]
set_output_delay -add_delay 10 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {up_switches[3]}]
set_clock_uncertainty 0.4 -hold [get_clocks {CLK}]
set_clock_uncertainty 2 -setup [get_clocks {CLK}]
set_clock_uncertainty 0.4 -hold [get_clocks {SPI_CLK}]
set_clock_uncertainty 2 -setup [get_clocks {SPI_CLK}]
set_false_path  -from [get_ports {reset_l}] 
