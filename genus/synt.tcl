#----------------------------------------
# Genus scripted synthesys for XFAB 0.18
# Author: Saul Rodriguez
# Date: 2020-04-01
#----------------------------------------

#-------------------------------------
#  Load libraries and design, Lab 1.1
#-------------------------------------
set_db information_level 9

set_db lib_search_path "../liberty/LIBERTY_STD_CELLS"
set_db library "D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C.lib"
set_db operating_conditions slow_3_00V_125C

#--------------------------
# Read Design
#--------------------------
read_hdl ../src/aska_dig.v 

set_db hdl_error_on_blackbox 1
set_db hdl_error_on_latch 1


elaborate aska_dig

check_design -unresolved 
check_design -all

#-----------------------
# Constraints, Lab 1.3
#-----------------------

#Clock
create_clock -name "CLK" -add -period 20.0 [get_ports clk]
set_clock_latency 2.0 [get_clocks CLK]
set_clock_uncertainty -setup 2.0 [get_clocks CLK]
set_clock_uncertainty -hold 0.4 [get_clocks CLK]

create_clock -name "SPI_CLK" -add -period 20.0 [get_ports SPI_Clk]
set_clock_latency 2.0 [get_clocks SPI_CLK]
set_clock_uncertainty -setup 2.0 [get_clocks SPI_CLK]
set_clock_uncertainty -hold 0.4 [get_clocks SPI_CLK]

#set_clock_transition 0.1 [get_clocks CLK]

#Asynchronous input signals (note: they need to be synchronized in RTL!)
set_false_path -from [get_ports reset_l]

#Asynchronous reset signals
#set_false_path -from [get_ports rst] 

#Output constraints
#Set output delays
set_output_delay 10.0 -max -network_latency_included \
-clock CLK [all_outputs]
set_output_delay 0.1 -min -network_latency_included \
-clock CLK [all_outputs]

#Set loads
set_load  1.0 -max [all_outputs]
set_load  0.01 -min [all_outputs]

#Input constraints
set_input_delay 10.0 -max -network_latency_included \
-clock CLK [all_inputs]
set_input_delay 0.1 -min -network_latency_included \
-clock CLK [all_inputs]

set_input_delay 10.0 -max -network_latency_included \
-clock SPI_CLK [all_inputs]
set_input_delay 0.1 -min -network_latency_included \
-clock SPI_CLK [all_inputs]

#Settings for block constraints. For chip constrains use an output pad of an output driver 
set_driving_cell -min -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [all_inputs]
set_driving_cell -max -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [all_inputs]


#Optimization settings and groupping of hierarchies (flattering)
set_db syn_generic_effort high
set_db syn_map_effort high

ungroup -flatten npg1

#------------
# Synthesis 
#------------


syn_generic
syn_map
syn_opt

#Insert tiehi or tielo cells to inputs connected to 1 or 0
insert_tiehilo_cells -high LOGIC1JI3V -low LOGIC0JI3V aska_dig
#or simply
#insert_tiehilo_cells

#--------------------
# Output and Reports 
#--------------------

#write out verilog netlists and constraints
write_hdl > genus_output/dig_aska_synth.v
write_sdc > genus_output/design.sdc
write_script > genus_output/design.genus_const.tcl

# report_timing -lint -verbose

report_timing > genus_output/synth_timing.rpt	
report_area   > genus_output/synth_area.rpt
report_gates  > genus_output/synth_gates.rpt	
report_power  > genus_output/synth_power.rpt



