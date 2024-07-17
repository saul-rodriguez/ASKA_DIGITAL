set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -min -rise  1.09738 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -fall  0.978414 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -rise  1.09738 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -fall  0.978414 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -rise  1.12063 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -min -fall  1.00346 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -rise  1.12063 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -fall  1.00346 [get_ports {clk}] -clock CLK 
