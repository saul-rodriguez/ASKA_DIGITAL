set_clock_latency 2  [get_clocks {SPI_CLK}]
set_clock_latency 2  [get_clocks {CLK}]
set_clock_latency -source -early -max -rise  0.0728565 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -fall  -0.0894365 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -rise  0.0728565 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -late -max -fall  -0.0894365 [get_ports {SPI_Clk}] -clock SPI_CLK 
set_clock_latency -source -early -max -rise  0.050836 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -max -fall  -0.0951555 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -rise  0.050836 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -fall  -0.0951555 [get_ports {clk}] -clock CLK 
