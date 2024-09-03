set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -min -rise  1.0683 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -fall  0.924365 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -rise  1.0683 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -min -fall  0.924365 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -min -rise  1.08626 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -min -fall  0.994283 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -rise  1.08626 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -fall  0.994283 [get_ports {clk}] -clock CLK 
