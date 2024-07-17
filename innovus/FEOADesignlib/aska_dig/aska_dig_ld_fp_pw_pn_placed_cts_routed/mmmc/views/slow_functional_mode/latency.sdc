set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -max -rise  0.0438173 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -fall  -0.0745542 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -rise  0.0438173 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -fall  -0.0745542 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -rise  0.0590867 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -max -fall  -0.143394 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -rise  0.0590867 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -fall  -0.143394 [get_ports {clk}] -clock CLK 
