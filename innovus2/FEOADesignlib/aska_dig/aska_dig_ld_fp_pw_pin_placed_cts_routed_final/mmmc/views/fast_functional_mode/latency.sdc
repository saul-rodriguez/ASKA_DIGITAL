set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -min -rise  1.09775 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -fall  0.961714 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -rise  1.09775 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -fall  0.961714 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -rise  1.13856 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -min -fall  1.05031 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -rise  1.13856 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -fall  1.05031 [get_ports {clk}] -clock CLK 
