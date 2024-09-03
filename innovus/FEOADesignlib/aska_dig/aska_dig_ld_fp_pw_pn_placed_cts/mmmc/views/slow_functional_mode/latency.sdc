set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -max -rise  0.0363456 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -fall  -0.130528 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -rise  0.0363456 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -fall  -0.130528 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -rise  0.020081 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -max -fall  -0.0779889 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -rise  0.020081 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -fall  -0.0779889 [get_ports {clk}] -clock CLK 
