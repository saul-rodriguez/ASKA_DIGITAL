######################################################################

# Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Mon Jul 15 12:13:22 EDT 2024

# This file contains the Genus script for design:aska_dig

######################################################################

set_db -quiet information_level 9
set_db -quiet init_lib_search_path ../liberty/LIBERTY_STD_CELLS
set_db -quiet design_mode_process no_value
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 24 0.0 6.0} {to_generic 3 27 3 10} {first_condense 7 35 7 18} {PBS_Generic_Opt-Post 11 35 11.251370000000001 17.25137} {{PBS_Generic-Postgen HBO Optimizations} 0 35 0.0 17.25137} {PBS_TechMap-Start 0 36 0.0 17.25137} {{PBS_TechMap-Premap HBO Optimizations} 0 36 0.0 17.25137} {second_condense 1 37 1 20} {reify 2 39 2 22} {global_incr_map 0 39 0 23} {{PBS_Techmap-Global Mapping} 3 39 4.650102999999998 21.901473} {{PBS_TechMap-Datapath Postmap Operations} 1 40 0.0 21.901473} {{PBS_TechMap-Postmap HBO Optimizations} 0 40 -0.0016949999999980037 21.899778} {{PBS_TechMap-Postmap Clock Gating} 0 40 0.0 21.899778} {{PBS_TechMap-Postmap Cleanup} 0 40 -0.0012790000000002522 21.898499} {PBS_Techmap-Post_MBCI 0 40 0.0 22.898499} {incr_opt 2 43 2 26} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_error_on_latch true
set_db -quiet hdl_error_on_blackbox true
set_db -quiet tinfo_tstamp_file .rs_saul.tstamp
set_db -quiet metric_enable true
set_db -quiet flow_metrics_snapshot_uuid be3d0d57-3502-47d0-b8a0-b6c0a4c7426f
set_db -quiet syn_generic_effort high
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet interconnect_mode wireload
set_db -quiet wireload_mode enclosed
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/slow_3_00V_125C
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/4_metls_routing
set_db -quiet operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/slow_3_00V_125C .tree_type worst_case_tree
set_db -quiet operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name CLK -domain domain_1 -period 20000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:aska_dig port:aska_dig/clk
set_db -quiet clock:aska_dig/CLK .clock_network_early_latency {2000.0 2000.0 2000.0 2000.0}
set_db -quiet clock:aska_dig/CLK .clock_network_late_latency {2000.0 2000.0 2000.0 2000.0}
set_db -quiet clock:aska_dig/CLK .clock_setup_uncertainty {2000.0 2000.0}
set_db -quiet clock:aska_dig/CLK .clock_hold_uncertainty {400.0 400.0}
define_clock -name SPI_CLK -domain domain_1 -period 20000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:aska_dig port:aska_dig/SPI_Clk
set_db -quiet clock:aska_dig/SPI_CLK .clock_network_early_latency {2000.0 2000.0 2000.0 2000.0}
set_db -quiet clock:aska_dig/SPI_CLK .clock_network_late_latency {2000.0 2000.0 2000.0 2000.0}
set_db -quiet clock:aska_dig/SPI_CLK .clock_setup_uncertainty {2000.0 2000.0}
set_db -quiet clock:aska_dig/SPI_CLK .clock_hold_uncertainty {400.0 400.0}
define_cost_group -design design:aska_dig -name CLK
define_cost_group -design design:aska_dig -name SPI_CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:aska_dig/CLK -name create_clock_delay_domain_1_CLK_R_0 port:aska_dig/clk
set_db -quiet external_delay:aska_dig/create_clock_delay_domain_1_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:aska_dig/CLK -edge_fall -name create_clock_delay_domain_1_CLK_F_0 port:aska_dig/clk
set_db -quiet external_delay:aska_dig/create_clock_delay_domain_1_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:aska_dig/SPI_CLK -name create_clock_delay_domain_1_SPI_CLK_R_0 port:aska_dig/SPI_Clk
set_db -quiet external_delay:aska_dig/create_clock_delay_domain_1_SPI_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:aska_dig/SPI_CLK -edge_fall -name create_clock_delay_domain_1_SPI_CLK_F_0 port:aska_dig/SPI_Clk
set_db -quiet external_delay:aska_dig/create_clock_delay_domain_1_SPI_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del {{port:aska_dig/up_switches[31]}}
set_db -quiet external_delay:aska_dig/ou_del .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_1_1 {{port:aska_dig/up_switches[30]}}
set_db -quiet external_delay:aska_dig/ou_del_1_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_2_1 {{port:aska_dig/up_switches[29]}}
set_db -quiet external_delay:aska_dig/ou_del_2_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_3_1 {{port:aska_dig/up_switches[28]}}
set_db -quiet external_delay:aska_dig/ou_del_3_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_4_1 {{port:aska_dig/up_switches[27]}}
set_db -quiet external_delay:aska_dig/ou_del_4_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_5_1 {{port:aska_dig/up_switches[26]}}
set_db -quiet external_delay:aska_dig/ou_del_5_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_6_1 {{port:aska_dig/up_switches[25]}}
set_db -quiet external_delay:aska_dig/ou_del_6_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_7_1 {{port:aska_dig/up_switches[24]}}
set_db -quiet external_delay:aska_dig/ou_del_7_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_8_1 {{port:aska_dig/up_switches[23]}}
set_db -quiet external_delay:aska_dig/ou_del_8_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_9_1 {{port:aska_dig/up_switches[22]}}
set_db -quiet external_delay:aska_dig/ou_del_9_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_10_1 {{port:aska_dig/up_switches[21]}}
set_db -quiet external_delay:aska_dig/ou_del_10_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_11_1 {{port:aska_dig/up_switches[20]}}
set_db -quiet external_delay:aska_dig/ou_del_11_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_12_1 {{port:aska_dig/up_switches[19]}}
set_db -quiet external_delay:aska_dig/ou_del_12_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_13_1 {{port:aska_dig/up_switches[18]}}
set_db -quiet external_delay:aska_dig/ou_del_13_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_14_1 {{port:aska_dig/up_switches[17]}}
set_db -quiet external_delay:aska_dig/ou_del_14_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_15_1 {{port:aska_dig/up_switches[16]}}
set_db -quiet external_delay:aska_dig/ou_del_15_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_16_1 {{port:aska_dig/up_switches[15]}}
set_db -quiet external_delay:aska_dig/ou_del_16_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_17_1 {{port:aska_dig/up_switches[14]}}
set_db -quiet external_delay:aska_dig/ou_del_17_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_18_1 {{port:aska_dig/up_switches[13]}}
set_db -quiet external_delay:aska_dig/ou_del_18_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_19_1 {{port:aska_dig/up_switches[12]}}
set_db -quiet external_delay:aska_dig/ou_del_19_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_20_1 {{port:aska_dig/up_switches[11]}}
set_db -quiet external_delay:aska_dig/ou_del_20_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_21_1 {{port:aska_dig/up_switches[10]}}
set_db -quiet external_delay:aska_dig/ou_del_21_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_22_1 {{port:aska_dig/up_switches[9]}}
set_db -quiet external_delay:aska_dig/ou_del_22_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_23_1 {{port:aska_dig/up_switches[8]}}
set_db -quiet external_delay:aska_dig/ou_del_23_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_24_1 {{port:aska_dig/up_switches[7]}}
set_db -quiet external_delay:aska_dig/ou_del_24_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_25_1 {{port:aska_dig/up_switches[6]}}
set_db -quiet external_delay:aska_dig/ou_del_25_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_26_1 {{port:aska_dig/up_switches[5]}}
set_db -quiet external_delay:aska_dig/ou_del_26_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_27_1 {{port:aska_dig/up_switches[4]}}
set_db -quiet external_delay:aska_dig/ou_del_27_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_28_1 {{port:aska_dig/up_switches[3]}}
set_db -quiet external_delay:aska_dig/ou_del_28_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_29_1 {{port:aska_dig/up_switches[2]}}
set_db -quiet external_delay:aska_dig/ou_del_29_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_30_1 {{port:aska_dig/up_switches[1]}}
set_db -quiet external_delay:aska_dig/ou_del_30_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_31_1 {{port:aska_dig/up_switches[0]}}
set_db -quiet external_delay:aska_dig/ou_del_31_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_32_1 {{port:aska_dig/down_switches[31]}}
set_db -quiet external_delay:aska_dig/ou_del_32_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_33_1 {{port:aska_dig/down_switches[30]}}
set_db -quiet external_delay:aska_dig/ou_del_33_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_34_1 {{port:aska_dig/down_switches[29]}}
set_db -quiet external_delay:aska_dig/ou_del_34_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_35_1 {{port:aska_dig/down_switches[28]}}
set_db -quiet external_delay:aska_dig/ou_del_35_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_36_1 {{port:aska_dig/down_switches[27]}}
set_db -quiet external_delay:aska_dig/ou_del_36_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_37_1 {{port:aska_dig/down_switches[26]}}
set_db -quiet external_delay:aska_dig/ou_del_37_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_38_1 {{port:aska_dig/down_switches[25]}}
set_db -quiet external_delay:aska_dig/ou_del_38_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_39_1 {{port:aska_dig/down_switches[24]}}
set_db -quiet external_delay:aska_dig/ou_del_39_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_40_1 {{port:aska_dig/down_switches[23]}}
set_db -quiet external_delay:aska_dig/ou_del_40_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_41_1 {{port:aska_dig/down_switches[22]}}
set_db -quiet external_delay:aska_dig/ou_del_41_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_42_1 {{port:aska_dig/down_switches[21]}}
set_db -quiet external_delay:aska_dig/ou_del_42_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_43_1 {{port:aska_dig/down_switches[20]}}
set_db -quiet external_delay:aska_dig/ou_del_43_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_44_1 {{port:aska_dig/down_switches[19]}}
set_db -quiet external_delay:aska_dig/ou_del_44_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_45_1 {{port:aska_dig/down_switches[18]}}
set_db -quiet external_delay:aska_dig/ou_del_45_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_46_1 {{port:aska_dig/down_switches[17]}}
set_db -quiet external_delay:aska_dig/ou_del_46_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_47_1 {{port:aska_dig/down_switches[16]}}
set_db -quiet external_delay:aska_dig/ou_del_47_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_48_1 {{port:aska_dig/down_switches[15]}}
set_db -quiet external_delay:aska_dig/ou_del_48_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_49_1 {{port:aska_dig/down_switches[14]}}
set_db -quiet external_delay:aska_dig/ou_del_49_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_50_1 {{port:aska_dig/down_switches[13]}}
set_db -quiet external_delay:aska_dig/ou_del_50_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_51_1 {{port:aska_dig/down_switches[12]}}
set_db -quiet external_delay:aska_dig/ou_del_51_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_52_1 {{port:aska_dig/down_switches[11]}}
set_db -quiet external_delay:aska_dig/ou_del_52_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_53_1 {{port:aska_dig/down_switches[10]}}
set_db -quiet external_delay:aska_dig/ou_del_53_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_54_1 {{port:aska_dig/down_switches[9]}}
set_db -quiet external_delay:aska_dig/ou_del_54_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_55_1 {{port:aska_dig/down_switches[8]}}
set_db -quiet external_delay:aska_dig/ou_del_55_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_56_1 {{port:aska_dig/down_switches[7]}}
set_db -quiet external_delay:aska_dig/ou_del_56_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_57_1 {{port:aska_dig/down_switches[6]}}
set_db -quiet external_delay:aska_dig/ou_del_57_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_58_1 {{port:aska_dig/down_switches[5]}}
set_db -quiet external_delay:aska_dig/ou_del_58_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_59_1 {{port:aska_dig/down_switches[4]}}
set_db -quiet external_delay:aska_dig/ou_del_59_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_60_1 {{port:aska_dig/down_switches[3]}}
set_db -quiet external_delay:aska_dig/ou_del_60_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_61_1 {{port:aska_dig/down_switches[2]}}
set_db -quiet external_delay:aska_dig/ou_del_61_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_62_1 {{port:aska_dig/down_switches[1]}}
set_db -quiet external_delay:aska_dig/ou_del_62_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_63_1 {{port:aska_dig/down_switches[0]}}
set_db -quiet external_delay:aska_dig/ou_del_63_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_64_1 {{port:aska_dig/DAC[5]}}
set_db -quiet external_delay:aska_dig/ou_del_64_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_65_1 {{port:aska_dig/DAC[4]}}
set_db -quiet external_delay:aska_dig/ou_del_65_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_66_1 {{port:aska_dig/DAC[3]}}
set_db -quiet external_delay:aska_dig/ou_del_66_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_67_1 {{port:aska_dig/DAC[2]}}
set_db -quiet external_delay:aska_dig/ou_del_67_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_68_1 {{port:aska_dig/DAC[1]}}
set_db -quiet external_delay:aska_dig/ou_del_68_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_69_1 {{port:aska_dig/DAC[0]}}
set_db -quiet external_delay:aska_dig/ou_del_69_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_70_1 port:aska_dig/pulse_active
set_db -quiet external_delay:aska_dig/ou_del_70_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/CLK -name ou_del_71_1 port:aska_dig/enable
set_db -quiet external_delay:aska_dig/ou_del_71_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_72_1 {{port:aska_dig/up_switches[31]}}
set_db -quiet external_delay:aska_dig/ou_del_72_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_73_1 {{port:aska_dig/up_switches[30]}}
set_db -quiet external_delay:aska_dig/ou_del_73_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_74_1 {{port:aska_dig/up_switches[29]}}
set_db -quiet external_delay:aska_dig/ou_del_74_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_75_1 {{port:aska_dig/up_switches[28]}}
set_db -quiet external_delay:aska_dig/ou_del_75_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_76_1 {{port:aska_dig/up_switches[27]}}
set_db -quiet external_delay:aska_dig/ou_del_76_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_77_1 {{port:aska_dig/up_switches[26]}}
set_db -quiet external_delay:aska_dig/ou_del_77_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_78_1 {{port:aska_dig/up_switches[25]}}
set_db -quiet external_delay:aska_dig/ou_del_78_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_79_1 {{port:aska_dig/up_switches[24]}}
set_db -quiet external_delay:aska_dig/ou_del_79_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_80_1 {{port:aska_dig/up_switches[23]}}
set_db -quiet external_delay:aska_dig/ou_del_80_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_81_1 {{port:aska_dig/up_switches[22]}}
set_db -quiet external_delay:aska_dig/ou_del_81_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_82_1 {{port:aska_dig/up_switches[21]}}
set_db -quiet external_delay:aska_dig/ou_del_82_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_83_1 {{port:aska_dig/up_switches[20]}}
set_db -quiet external_delay:aska_dig/ou_del_83_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_84_1 {{port:aska_dig/up_switches[19]}}
set_db -quiet external_delay:aska_dig/ou_del_84_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_85_1 {{port:aska_dig/up_switches[18]}}
set_db -quiet external_delay:aska_dig/ou_del_85_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_86_1 {{port:aska_dig/up_switches[17]}}
set_db -quiet external_delay:aska_dig/ou_del_86_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_87_1 {{port:aska_dig/up_switches[16]}}
set_db -quiet external_delay:aska_dig/ou_del_87_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_88_1 {{port:aska_dig/up_switches[15]}}
set_db -quiet external_delay:aska_dig/ou_del_88_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_89_1 {{port:aska_dig/up_switches[14]}}
set_db -quiet external_delay:aska_dig/ou_del_89_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_90_1 {{port:aska_dig/up_switches[13]}}
set_db -quiet external_delay:aska_dig/ou_del_90_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_91_1 {{port:aska_dig/up_switches[12]}}
set_db -quiet external_delay:aska_dig/ou_del_91_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_92_1 {{port:aska_dig/up_switches[11]}}
set_db -quiet external_delay:aska_dig/ou_del_92_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_93_1 {{port:aska_dig/up_switches[10]}}
set_db -quiet external_delay:aska_dig/ou_del_93_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_94_1 {{port:aska_dig/up_switches[9]}}
set_db -quiet external_delay:aska_dig/ou_del_94_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_95_1 {{port:aska_dig/up_switches[8]}}
set_db -quiet external_delay:aska_dig/ou_del_95_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_96_1 {{port:aska_dig/up_switches[7]}}
set_db -quiet external_delay:aska_dig/ou_del_96_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_97_1 {{port:aska_dig/up_switches[6]}}
set_db -quiet external_delay:aska_dig/ou_del_97_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_98_1 {{port:aska_dig/up_switches[5]}}
set_db -quiet external_delay:aska_dig/ou_del_98_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_99_1 {{port:aska_dig/up_switches[4]}}
set_db -quiet external_delay:aska_dig/ou_del_99_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_100_1 {{port:aska_dig/up_switches[3]}}
set_db -quiet external_delay:aska_dig/ou_del_100_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_101_1 {{port:aska_dig/up_switches[2]}}
set_db -quiet external_delay:aska_dig/ou_del_101_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_102_1 {{port:aska_dig/up_switches[1]}}
set_db -quiet external_delay:aska_dig/ou_del_102_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_103_1 {{port:aska_dig/up_switches[0]}}
set_db -quiet external_delay:aska_dig/ou_del_103_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_104_1 {{port:aska_dig/down_switches[31]}}
set_db -quiet external_delay:aska_dig/ou_del_104_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_105_1 {{port:aska_dig/down_switches[30]}}
set_db -quiet external_delay:aska_dig/ou_del_105_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_106_1 {{port:aska_dig/down_switches[29]}}
set_db -quiet external_delay:aska_dig/ou_del_106_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_107_1 {{port:aska_dig/down_switches[28]}}
set_db -quiet external_delay:aska_dig/ou_del_107_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_108_1 {{port:aska_dig/down_switches[27]}}
set_db -quiet external_delay:aska_dig/ou_del_108_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_109_1 {{port:aska_dig/down_switches[26]}}
set_db -quiet external_delay:aska_dig/ou_del_109_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_110_1 {{port:aska_dig/down_switches[25]}}
set_db -quiet external_delay:aska_dig/ou_del_110_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_111_1 {{port:aska_dig/down_switches[24]}}
set_db -quiet external_delay:aska_dig/ou_del_111_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_112_1 {{port:aska_dig/down_switches[23]}}
set_db -quiet external_delay:aska_dig/ou_del_112_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_113_1 {{port:aska_dig/down_switches[22]}}
set_db -quiet external_delay:aska_dig/ou_del_113_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_114_1 {{port:aska_dig/down_switches[21]}}
set_db -quiet external_delay:aska_dig/ou_del_114_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_115_1 {{port:aska_dig/down_switches[20]}}
set_db -quiet external_delay:aska_dig/ou_del_115_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_116_1 {{port:aska_dig/down_switches[19]}}
set_db -quiet external_delay:aska_dig/ou_del_116_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_117_1 {{port:aska_dig/down_switches[18]}}
set_db -quiet external_delay:aska_dig/ou_del_117_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_118_1 {{port:aska_dig/down_switches[17]}}
set_db -quiet external_delay:aska_dig/ou_del_118_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_119_1 {{port:aska_dig/down_switches[16]}}
set_db -quiet external_delay:aska_dig/ou_del_119_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_120_1 {{port:aska_dig/down_switches[15]}}
set_db -quiet external_delay:aska_dig/ou_del_120_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_121_1 {{port:aska_dig/down_switches[14]}}
set_db -quiet external_delay:aska_dig/ou_del_121_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_122_1 {{port:aska_dig/down_switches[13]}}
set_db -quiet external_delay:aska_dig/ou_del_122_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_123_1 {{port:aska_dig/down_switches[12]}}
set_db -quiet external_delay:aska_dig/ou_del_123_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_124_1 {{port:aska_dig/down_switches[11]}}
set_db -quiet external_delay:aska_dig/ou_del_124_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_125_1 {{port:aska_dig/down_switches[10]}}
set_db -quiet external_delay:aska_dig/ou_del_125_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_126_1 {{port:aska_dig/down_switches[9]}}
set_db -quiet external_delay:aska_dig/ou_del_126_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_127_1 {{port:aska_dig/down_switches[8]}}
set_db -quiet external_delay:aska_dig/ou_del_127_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_128_1 {{port:aska_dig/down_switches[7]}}
set_db -quiet external_delay:aska_dig/ou_del_128_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_129_1 {{port:aska_dig/down_switches[6]}}
set_db -quiet external_delay:aska_dig/ou_del_129_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_130_1 {{port:aska_dig/down_switches[5]}}
set_db -quiet external_delay:aska_dig/ou_del_130_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_131_1 {{port:aska_dig/down_switches[4]}}
set_db -quiet external_delay:aska_dig/ou_del_131_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_132_1 {{port:aska_dig/down_switches[3]}}
set_db -quiet external_delay:aska_dig/ou_del_132_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_133_1 {{port:aska_dig/down_switches[2]}}
set_db -quiet external_delay:aska_dig/ou_del_133_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_134_1 {{port:aska_dig/down_switches[1]}}
set_db -quiet external_delay:aska_dig/ou_del_134_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_135_1 {{port:aska_dig/down_switches[0]}}
set_db -quiet external_delay:aska_dig/ou_del_135_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_136_1 {{port:aska_dig/DAC[5]}}
set_db -quiet external_delay:aska_dig/ou_del_136_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_137_1 {{port:aska_dig/DAC[4]}}
set_db -quiet external_delay:aska_dig/ou_del_137_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_138_1 {{port:aska_dig/DAC[3]}}
set_db -quiet external_delay:aska_dig/ou_del_138_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_139_1 {{port:aska_dig/DAC[2]}}
set_db -quiet external_delay:aska_dig/ou_del_139_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_140_1 {{port:aska_dig/DAC[1]}}
set_db -quiet external_delay:aska_dig/ou_del_140_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_141_1 {{port:aska_dig/DAC[0]}}
set_db -quiet external_delay:aska_dig/ou_del_141_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_142_1 port:aska_dig/pulse_active
set_db -quiet external_delay:aska_dig/ou_del_142_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:aska_dig/CLK -name ou_del_143_1 port:aska_dig/enable
set_db -quiet external_delay:aska_dig/ou_del_143_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_154_1 port:aska_dig/reset_l
set_db -quiet external_delay:aska_dig/in_del_154_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_155_1 port:aska_dig/porborn
set_db -quiet external_delay:aska_dig/in_del_155_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_156_1 port:aska_dig/SPI_CS
set_db -quiet external_delay:aska_dig/in_del_156_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_157_1 port:aska_dig/SPI_MOSI
set_db -quiet external_delay:aska_dig/in_del_157_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_158_1 {{port:aska_dig/IC_addr[1]}}
set_db -quiet external_delay:aska_dig/in_del_158_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 10000.0 10000.0} -clock clock:aska_dig/SPI_CLK -name in_del_159_1 {{port:aska_dig/IC_addr[0]}}
set_db -quiet external_delay:aska_dig/in_del_159_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del port:aska_dig/reset_l
set_db -quiet external_delay:aska_dig/in_del .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del_160_1 port:aska_dig/porborn
set_db -quiet external_delay:aska_dig/in_del_160_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del_161_1 port:aska_dig/SPI_CS
set_db -quiet external_delay:aska_dig/in_del_161_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del_162_1 port:aska_dig/SPI_MOSI
set_db -quiet external_delay:aska_dig/in_del_162_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del_163_1 {{port:aska_dig/IC_addr[1]}}
set_db -quiet external_delay:aska_dig/in_del_163_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:aska_dig/SPI_CLK -name in_del_164_1 {{port:aska_dig/IC_addr[0]}}
set_db -quiet external_delay:aska_dig/in_del_164_1 .clock_network_latency_included true
path_group -paths [specify_paths -lenient -to clock:aska_dig/CLK]  -name CLK -group cost_group:aska_dig/CLK -user_priority -1047552
path_group -paths [specify_paths -lenient -to clock:aska_dig/SPI_CLK]  -name SPI_CLK -group cost_group:aska_dig/SPI_CLK -user_priority -1047552
path_disable -paths [specify_paths -lenient -from port:aska_dig/reset_l]  -name dis_1 -user_priority -770048
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:aska_dig .seq_reason_deleted_internal {{{spi1/conf1_asyn_reg[24]} unloaded {spi1/conf1_asyn[24]}} {{spi1/conf1_asyn_reg[25]} unloaded {spi1/conf1_asyn[25]}} {{spi1/conf1_asyn_reg[26]} unloaded {spi1/conf1_asyn[26]}} {{spi1/conf1_asyn_reg[27]} unloaded {spi1/conf1_asyn[27]}} {{spi1/conf1_asyn_reg[28]} unloaded {spi1/conf1_asyn[28]}} {{spi1/conf1_asyn_reg[29]} unloaded {spi1/conf1_asyn[29]}} {{spi1/conf1_asyn_reg[30]} unloaded {spi1/conf1_asyn[30]}} {{spi1/conf1_asyn_reg[31]} unloaded {spi1/conf1_asyn[31]}} {{spi1/conf1_reg[24]} unloaded {spi1/conf1[24]}} {{spi1/conf1_reg[25]} unloaded {spi1/conf1[25]}} {{spi1/conf1_reg[26]} unloaded {spi1/conf1[26]}} {{spi1/conf1_reg[27]} unloaded {spi1/conf1[27]}} {{spi1/conf1_reg[28]} unloaded {spi1/conf1[28]}} {{spi1/conf1_reg[29]} unloaded {spi1/conf1[29]}} {{spi1/conf1_reg[30]} unloaded {spi1/conf1[30]}} {{spi1/conf1_reg[31]} unloaded {spi1/conf1[31]}} {{spi1/conf1_meta_reg[24]} unloaded {spi1/conf1_meta[24]}} {{spi1/conf1_meta_reg[25]} unloaded {spi1/conf1_meta[25]}} {{spi1/conf1_meta_reg[26]} unloaded {spi1/conf1_meta[26]}} {{spi1/conf1_meta_reg[27]} unloaded {spi1/conf1_meta[27]}} {{spi1/conf1_meta_reg[28]} unloaded {spi1/conf1_meta[28]}} {{spi1/conf1_meta_reg[29]} unloaded {spi1/conf1_meta[29]}} {{spi1/conf1_meta_reg[30]} unloaded {spi1/conf1_meta[30]}} {{spi1/conf1_meta_reg[31]} unloaded {spi1/conf1_meta[31]}}}
set_db -quiet design:aska_dig .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 61000} {cell_count 1484} {utilization  0.00} {runtime 3 27 3 10} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 62452} {cell_count 1730} {utilization  0.00} {runtime 7 35 7 18} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 61858} {cell_count 1701} {utilization  0.00} {runtime 1 37 1 20} }{reify {wns 745} {tns 0} {vep 0} {area 51619} {cell_count 1246} {utilization  0.00} {runtime 2 39 2 22} }{global_incr_map {wns 361} {tns 0} {vep 0} {area 49604} {cell_count 1211} {utilization  0.00} {runtime 0 39 0 23} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 48877} {cell_count 1199} {utilization  0.00} {runtime 2 43 2 26} }}
set_db -quiet design:aska_dig .seq_mbci_coverage 0.0
set_db -quiet design:aska_dig .hdl_user_name aska_dig
set_db -quiet design:aska_dig .hdl_filelist {{default -v2001 {SYNTHESIS} {../src/aska_dig.v} {} {}}}
set_db -quiet design:aska_dig .verification_directory fv/aska_dig
set_db -quiet design:aska_dig .seq_reason_deleted {{{spi1/conf1_asyn_reg[24]} unloaded} {{spi1/conf1_asyn_reg[25]} unloaded} {{spi1/conf1_asyn_reg[26]} unloaded} {{spi1/conf1_asyn_reg[27]} unloaded} {{spi1/conf1_asyn_reg[28]} unloaded} {{spi1/conf1_asyn_reg[29]} unloaded} {{spi1/conf1_asyn_reg[30]} unloaded} {{spi1/conf1_asyn_reg[31]} unloaded} {{spi1/conf1_reg[24]} unloaded} {{spi1/conf1_reg[25]} unloaded} {{spi1/conf1_reg[26]} unloaded} {{spi1/conf1_reg[27]} unloaded} {{spi1/conf1_reg[28]} unloaded} {{spi1/conf1_reg[29]} unloaded} {{spi1/conf1_reg[30]} unloaded} {{spi1/conf1_reg[31]} unloaded} {{spi1/conf1_meta_reg[24]} unloaded} {{spi1/conf1_meta_reg[25]} unloaded} {{spi1/conf1_meta_reg[26]} unloaded} {{spi1/conf1_meta_reg[27]} unloaded} {{spi1/conf1_meta_reg[28]} unloaded} {{spi1/conf1_meta_reg[29]} unloaded} {{spi1/conf1_meta_reg[30]} unloaded} {{spi1/conf1_meta_reg[31]} unloaded}}
set_db -quiet design:aska_dig .lp_clock_gating_max_flops inf
set_db -quiet port:aska_dig/clk .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/clk .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/clk .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/clk .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/clk .original_name clk
set_db -quiet port:aska_dig/reset_l .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/reset_l .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/reset_l .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/reset_l .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/reset_l .original_name reset_l
set_db -quiet port:aska_dig/porborn .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/porborn .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/porborn .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/porborn .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/porborn .original_name porborn
set_db -quiet port:aska_dig/SPI_CS .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_CS .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_CS .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_CS .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_CS .original_name SPI_CS
set_db -quiet port:aska_dig/SPI_Clk .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_Clk .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_Clk .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_Clk .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_Clk .original_name SPI_Clk
set_db -quiet port:aska_dig/SPI_MOSI .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_MOSI .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:aska_dig/SPI_MOSI .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_MOSI .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:aska_dig/SPI_MOSI .original_name SPI_MOSI
set_db -quiet {port:aska_dig/IC_addr[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet {port:aska_dig/IC_addr[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet {port:aska_dig/IC_addr[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet {port:aska_dig/IC_addr[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet {port:aska_dig/IC_addr[1]} .original_name {IC_addr[1]}
set_db -quiet {port:aska_dig/IC_addr[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet {port:aska_dig/IC_addr[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet {port:aska_dig/IC_addr[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet {port:aska_dig/IC_addr[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet {port:aska_dig/IC_addr[0]} .original_name {IC_addr[0]}
set_db -quiet {port:aska_dig/up_switches[31]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[31]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[31]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[31]} .original_name {up_switches[31]}
set_db -quiet {port:aska_dig/up_switches[31]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[30]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[30]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[30]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[30]} .original_name {up_switches[30]}
set_db -quiet {port:aska_dig/up_switches[30]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[29]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[29]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[29]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[29]} .original_name {up_switches[29]}
set_db -quiet {port:aska_dig/up_switches[29]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[28]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[28]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[28]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[28]} .original_name {up_switches[28]}
set_db -quiet {port:aska_dig/up_switches[28]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[27]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[27]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[27]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[27]} .original_name {up_switches[27]}
set_db -quiet {port:aska_dig/up_switches[27]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[26]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[26]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[26]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[26]} .original_name {up_switches[26]}
set_db -quiet {port:aska_dig/up_switches[26]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[25]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[25]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[25]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[25]} .original_name {up_switches[25]}
set_db -quiet {port:aska_dig/up_switches[25]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[24]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[24]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[24]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[24]} .original_name {up_switches[24]}
set_db -quiet {port:aska_dig/up_switches[24]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[23]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[23]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[23]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[23]} .original_name {up_switches[23]}
set_db -quiet {port:aska_dig/up_switches[23]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[22]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[22]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[22]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[22]} .original_name {up_switches[22]}
set_db -quiet {port:aska_dig/up_switches[22]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[21]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[21]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[21]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[21]} .original_name {up_switches[21]}
set_db -quiet {port:aska_dig/up_switches[21]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[20]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[20]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[20]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[20]} .original_name {up_switches[20]}
set_db -quiet {port:aska_dig/up_switches[20]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[19]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[19]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[19]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[19]} .original_name {up_switches[19]}
set_db -quiet {port:aska_dig/up_switches[19]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[18]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[18]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[18]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[18]} .original_name {up_switches[18]}
set_db -quiet {port:aska_dig/up_switches[18]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[17]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[17]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[17]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[17]} .original_name {up_switches[17]}
set_db -quiet {port:aska_dig/up_switches[17]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[16]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[16]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[16]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[16]} .original_name {up_switches[16]}
set_db -quiet {port:aska_dig/up_switches[16]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[15]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[15]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[15]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[15]} .original_name {up_switches[15]}
set_db -quiet {port:aska_dig/up_switches[15]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[14]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[14]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[14]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[14]} .original_name {up_switches[14]}
set_db -quiet {port:aska_dig/up_switches[14]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[13]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[13]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[13]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[13]} .original_name {up_switches[13]}
set_db -quiet {port:aska_dig/up_switches[13]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[12]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[12]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[12]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[12]} .original_name {up_switches[12]}
set_db -quiet {port:aska_dig/up_switches[12]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[11]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[11]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[11]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[11]} .original_name {up_switches[11]}
set_db -quiet {port:aska_dig/up_switches[11]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[10]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[10]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[10]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[10]} .original_name {up_switches[10]}
set_db -quiet {port:aska_dig/up_switches[10]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[9]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[9]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[9]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[9]} .original_name {up_switches[9]}
set_db -quiet {port:aska_dig/up_switches[9]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[8]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[8]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[8]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[8]} .original_name {up_switches[8]}
set_db -quiet {port:aska_dig/up_switches[8]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[7]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[7]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[7]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[7]} .original_name {up_switches[7]}
set_db -quiet {port:aska_dig/up_switches[7]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[6]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[6]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[6]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[6]} .original_name {up_switches[6]}
set_db -quiet {port:aska_dig/up_switches[6]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[5]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[5]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[5]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[5]} .original_name {up_switches[5]}
set_db -quiet {port:aska_dig/up_switches[5]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[4]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[4]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[4]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[4]} .original_name {up_switches[4]}
set_db -quiet {port:aska_dig/up_switches[4]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[3]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[3]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[3]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[3]} .original_name {up_switches[3]}
set_db -quiet {port:aska_dig/up_switches[3]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[2]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[2]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[2]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[2]} .original_name {up_switches[2]}
set_db -quiet {port:aska_dig/up_switches[2]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[1]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[1]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[1]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[1]} .original_name {up_switches[1]}
set_db -quiet {port:aska_dig/up_switches[1]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[0]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/up_switches[0]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/up_switches[0]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/up_switches[0]} .original_name {up_switches[0]}
set_db -quiet {port:aska_dig/up_switches[0]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[31]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[31]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[31]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[31]} .original_name {down_switches[31]}
set_db -quiet {port:aska_dig/down_switches[31]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[30]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[30]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[30]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[30]} .original_name {down_switches[30]}
set_db -quiet {port:aska_dig/down_switches[30]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[29]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[29]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[29]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[29]} .original_name {down_switches[29]}
set_db -quiet {port:aska_dig/down_switches[29]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[28]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[28]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[28]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[28]} .original_name {down_switches[28]}
set_db -quiet {port:aska_dig/down_switches[28]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[27]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[27]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[27]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[27]} .original_name {down_switches[27]}
set_db -quiet {port:aska_dig/down_switches[27]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[26]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[26]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[26]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[26]} .original_name {down_switches[26]}
set_db -quiet {port:aska_dig/down_switches[26]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[25]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[25]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[25]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[25]} .original_name {down_switches[25]}
set_db -quiet {port:aska_dig/down_switches[25]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[24]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[24]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[24]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[24]} .original_name {down_switches[24]}
set_db -quiet {port:aska_dig/down_switches[24]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[23]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[23]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[23]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[23]} .original_name {down_switches[23]}
set_db -quiet {port:aska_dig/down_switches[23]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[22]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[22]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[22]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[22]} .original_name {down_switches[22]}
set_db -quiet {port:aska_dig/down_switches[22]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[21]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[21]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[21]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[21]} .original_name {down_switches[21]}
set_db -quiet {port:aska_dig/down_switches[21]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[20]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[20]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[20]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[20]} .original_name {down_switches[20]}
set_db -quiet {port:aska_dig/down_switches[20]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[19]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[19]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[19]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[19]} .original_name {down_switches[19]}
set_db -quiet {port:aska_dig/down_switches[19]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[18]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[18]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[18]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[18]} .original_name {down_switches[18]}
set_db -quiet {port:aska_dig/down_switches[18]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[17]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[17]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[17]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[17]} .original_name {down_switches[17]}
set_db -quiet {port:aska_dig/down_switches[17]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[16]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[16]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[16]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[16]} .original_name {down_switches[16]}
set_db -quiet {port:aska_dig/down_switches[16]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[15]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[15]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[15]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[15]} .original_name {down_switches[15]}
set_db -quiet {port:aska_dig/down_switches[15]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[14]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[14]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[14]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[14]} .original_name {down_switches[14]}
set_db -quiet {port:aska_dig/down_switches[14]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[13]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[13]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[13]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[13]} .original_name {down_switches[13]}
set_db -quiet {port:aska_dig/down_switches[13]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[12]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[12]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[12]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[12]} .original_name {down_switches[12]}
set_db -quiet {port:aska_dig/down_switches[12]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[11]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[11]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[11]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[11]} .original_name {down_switches[11]}
set_db -quiet {port:aska_dig/down_switches[11]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[10]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[10]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[10]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[10]} .original_name {down_switches[10]}
set_db -quiet {port:aska_dig/down_switches[10]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[9]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[9]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[9]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[9]} .original_name {down_switches[9]}
set_db -quiet {port:aska_dig/down_switches[9]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[8]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[8]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[8]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[8]} .original_name {down_switches[8]}
set_db -quiet {port:aska_dig/down_switches[8]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[7]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[7]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[7]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[7]} .original_name {down_switches[7]}
set_db -quiet {port:aska_dig/down_switches[7]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[6]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[6]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[6]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[6]} .original_name {down_switches[6]}
set_db -quiet {port:aska_dig/down_switches[6]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[5]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[5]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[5]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[5]} .original_name {down_switches[5]}
set_db -quiet {port:aska_dig/down_switches[5]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[4]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[4]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[4]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[4]} .original_name {down_switches[4]}
set_db -quiet {port:aska_dig/down_switches[4]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[3]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[3]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[3]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[3]} .original_name {down_switches[3]}
set_db -quiet {port:aska_dig/down_switches[3]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[2]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[2]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[2]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[2]} .original_name {down_switches[2]}
set_db -quiet {port:aska_dig/down_switches[2]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[1]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[1]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[1]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[1]} .original_name {down_switches[1]}
set_db -quiet {port:aska_dig/down_switches[1]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[0]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/down_switches[0]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/down_switches[0]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/down_switches[0]} .original_name {down_switches[0]}
set_db -quiet {port:aska_dig/down_switches[0]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[5]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[5]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[5]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[5]} .original_name {DAC[5]}
set_db -quiet {port:aska_dig/DAC[5]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[4]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[4]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[4]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[4]} .original_name {DAC[4]}
set_db -quiet {port:aska_dig/DAC[4]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[3]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[3]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[3]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[3]} .original_name {DAC[3]}
set_db -quiet {port:aska_dig/DAC[3]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[2]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[2]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[2]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[2]} .original_name {DAC[2]}
set_db -quiet {port:aska_dig/DAC[2]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[1]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[1]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[1]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[1]} .original_name {DAC[1]}
set_db -quiet {port:aska_dig/DAC[1]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[0]} .external_pin_cap_min 10.0
set_db -quiet {port:aska_dig/DAC[0]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:aska_dig/DAC[0]} .external_capacitance_min 10.0
set_db -quiet {port:aska_dig/DAC[0]} .original_name {DAC[0]}
set_db -quiet {port:aska_dig/DAC[0]} .external_pin_cap {1000.0 1000.0}
set_db -quiet port:aska_dig/pulse_active .external_pin_cap_min 10.0
set_db -quiet port:aska_dig/pulse_active .external_capacitance_max {1000.0 1000.0}
set_db -quiet port:aska_dig/pulse_active .external_capacitance_min 10.0
set_db -quiet port:aska_dig/pulse_active .original_name pulse_active
set_db -quiet port:aska_dig/pulse_active .external_pin_cap {1000.0 1000.0}
set_db -quiet port:aska_dig/enable .external_pin_cap_min 10.0
set_db -quiet port:aska_dig/enable .external_capacitance_max {1000.0 1000.0}
set_db -quiet port:aska_dig/enable .external_capacitance_min 10.0
set_db -quiet port:aska_dig/enable .original_name enable
set_db -quiet port:aska_dig/enable .external_pin_cap {1000.0 1000.0}
set_db -quiet inst:aska_dig/npg1_pulse_start_reg .original_name npg1/pulse_start
set_db -quiet inst:aska_dig/npg1_pulse_start_reg .orig_hdl_instantiated false
set_db -quiet inst:aska_dig/npg1_pulse_start_reg .single_bit_orig_name npg1/pulse_start
set_db -quiet inst:aska_dig/npg1_pulse_start_reg .gint_phase_inversion false
set_db -quiet pin:aska_dig/npg1_pulse_start_reg/Q .original_name npg1/pulse_start/q
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[0]} .original_name {{npg1/DAC_cont[0]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[0]} .single_bit_orig_name {npg1/DAC_cont[0]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[0]/Q} .original_name {npg1/DAC_cont[0]/q}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[1]} .original_name {{npg1/DAC_cont[1]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[1]} .single_bit_orig_name {npg1/DAC_cont[1]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[1]/Q} .original_name {npg1/DAC_cont[1]/q}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[2]} .original_name {{npg1/DAC_cont[2]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[2]} .single_bit_orig_name {npg1/DAC_cont[2]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[2]/Q} .original_name {npg1/DAC_cont[2]/q}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[3]} .original_name {{npg1/DAC_cont[3]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[3]} .single_bit_orig_name {npg1/DAC_cont[3]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[3]/Q} .original_name {npg1/DAC_cont[3]/q}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[4]} .original_name {{npg1/DAC_cont[4]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[4]} .single_bit_orig_name {npg1/DAC_cont[4]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[4]/Q} .original_name {npg1/DAC_cont[4]/q}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[5]} .original_name {{npg1/DAC_cont[5]}}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[5]} .single_bit_orig_name {npg1/DAC_cont[5]}
set_db -quiet {inst:aska_dig/npg1_DAC_cont_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DAC_cont_reg[5]/Q} .original_name {npg1/DAC_cont[5]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[0]} .original_name {{npg1/DOWN_accumulator[0]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[0]} .single_bit_orig_name {npg1/DOWN_accumulator[0]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[0]/Q} .original_name {npg1/DOWN_accumulator[0]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[1]} .original_name {{npg1/DOWN_accumulator[1]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[1]} .single_bit_orig_name {npg1/DOWN_accumulator[1]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[1]/Q} .original_name {npg1/DOWN_accumulator[1]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[2]} .original_name {{npg1/DOWN_accumulator[2]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[2]} .single_bit_orig_name {npg1/DOWN_accumulator[2]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[2]/Q} .original_name {npg1/DOWN_accumulator[2]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[3]} .original_name {{npg1/DOWN_accumulator[3]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[3]} .single_bit_orig_name {npg1/DOWN_accumulator[3]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[3]/Q} .original_name {npg1/DOWN_accumulator[3]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[4]} .original_name {{npg1/DOWN_accumulator[4]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[4]} .single_bit_orig_name {npg1/DOWN_accumulator[4]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[4]/Q} .original_name {npg1/DOWN_accumulator[4]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[5]} .original_name {{npg1/DOWN_accumulator[5]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[5]} .single_bit_orig_name {npg1/DOWN_accumulator[5]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[5]/Q} .original_name {npg1/DOWN_accumulator[5]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[6]} .original_name {{npg1/DOWN_accumulator[6]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[6]} .single_bit_orig_name {npg1/DOWN_accumulator[6]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[6]/Q} .original_name {npg1/DOWN_accumulator[6]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[7]} .original_name {{npg1/DOWN_accumulator[7]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[7]} .single_bit_orig_name {npg1/DOWN_accumulator[7]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[7]/Q} .original_name {npg1/DOWN_accumulator[7]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[8]} .original_name {{npg1/DOWN_accumulator[8]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[8]} .single_bit_orig_name {npg1/DOWN_accumulator[8]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[8]/Q} .original_name {npg1/DOWN_accumulator[8]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[9]} .original_name {{npg1/DOWN_accumulator[9]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[9]} .single_bit_orig_name {npg1/DOWN_accumulator[9]}
set_db -quiet {inst:aska_dig/npg1_DOWN_accumulator_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_accumulator_reg[9]/Q} .original_name {npg1/DOWN_accumulator[9]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[0]} .original_name {{npg1/DOWN_count[0]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[0]} .single_bit_orig_name {npg1/DOWN_count[0]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[0]/Q} .original_name {npg1/DOWN_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[1]} .original_name {{npg1/DOWN_count[1]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[1]} .single_bit_orig_name {npg1/DOWN_count[1]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[1]/Q} .original_name {npg1/DOWN_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[2]} .original_name {{npg1/DOWN_count[2]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[2]} .single_bit_orig_name {npg1/DOWN_count[2]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[2]/Q} .original_name {npg1/DOWN_count[2]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[3]} .original_name {{npg1/DOWN_count[3]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[3]} .single_bit_orig_name {npg1/DOWN_count[3]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[3]/Q} .original_name {npg1/DOWN_count[3]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[4]} .original_name {{npg1/DOWN_count[4]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[4]} .single_bit_orig_name {npg1/DOWN_count[4]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[4]/Q} .original_name {npg1/DOWN_count[4]/q}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[5]} .original_name {{npg1/DOWN_count[5]}}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[5]} .single_bit_orig_name {npg1/DOWN_count[5]}
set_db -quiet {inst:aska_dig/npg1_DOWN_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_DOWN_count_reg[5]/Q} .original_name {npg1/DOWN_count[5]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[0]} .original_name {{npg1/OFF_count[0]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[0]} .single_bit_orig_name {npg1/OFF_count[0]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[0]/Q} .original_name {npg1/OFF_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[1]} .original_name {{npg1/OFF_count[1]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[1]} .single_bit_orig_name {npg1/OFF_count[1]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[1]/Q} .original_name {npg1/OFF_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[2]} .original_name {{npg1/OFF_count[2]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[2]} .single_bit_orig_name {npg1/OFF_count[2]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[2]/Q} .original_name {npg1/OFF_count[2]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[3]} .original_name {{npg1/OFF_count[3]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[3]} .single_bit_orig_name {npg1/OFF_count[3]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[3]/Q} .original_name {npg1/OFF_count[3]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[4]} .original_name {{npg1/OFF_count[4]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[4]} .single_bit_orig_name {npg1/OFF_count[4]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[4]/Q} .original_name {npg1/OFF_count[4]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[5]} .original_name {{npg1/OFF_count[5]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[5]} .single_bit_orig_name {npg1/OFF_count[5]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[5]/Q} .original_name {npg1/OFF_count[5]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[6]} .original_name {{npg1/OFF_count[6]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[6]} .single_bit_orig_name {npg1/OFF_count[6]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[6]/Q} .original_name {npg1/OFF_count[6]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[7]} .original_name {{npg1/OFF_count[7]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[7]} .single_bit_orig_name {npg1/OFF_count[7]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[7]/Q} .original_name {npg1/OFF_count[7]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[8]} .original_name {{npg1/OFF_count[8]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[8]} .single_bit_orig_name {npg1/OFF_count[8]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[8]/Q} .original_name {npg1/OFF_count[8]/q}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[9]} .original_name {{npg1/OFF_count[9]}}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[9]} .single_bit_orig_name {npg1/OFF_count[9]}
set_db -quiet {inst:aska_dig/npg1_OFF_count_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_OFF_count_reg[9]/Q} .original_name {npg1/OFF_count[9]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[0]} .original_name {{npg1/ON_count[0]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[0]} .single_bit_orig_name {npg1/ON_count[0]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[0]/Q} .original_name {npg1/ON_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[1]} .original_name {{npg1/ON_count[1]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[1]} .single_bit_orig_name {npg1/ON_count[1]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[1]/Q} .original_name {npg1/ON_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[2]} .original_name {{npg1/ON_count[2]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[2]} .single_bit_orig_name {npg1/ON_count[2]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[2]/Q} .original_name {npg1/ON_count[2]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[3]} .original_name {{npg1/ON_count[3]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[3]} .single_bit_orig_name {npg1/ON_count[3]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[3]/Q} .original_name {npg1/ON_count[3]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[4]} .original_name {{npg1/ON_count[4]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[4]} .single_bit_orig_name {npg1/ON_count[4]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[4]/Q} .original_name {npg1/ON_count[4]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[5]} .original_name {{npg1/ON_count[5]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[5]} .single_bit_orig_name {npg1/ON_count[5]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[5]/Q} .original_name {npg1/ON_count[5]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[6]} .original_name {{npg1/ON_count[6]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[6]} .single_bit_orig_name {npg1/ON_count[6]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[6]/Q} .original_name {npg1/ON_count[6]/q}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[7]} .original_name {{npg1/ON_count[7]}}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[7]} .single_bit_orig_name {npg1/ON_count[7]}
set_db -quiet {inst:aska_dig/npg1_ON_count_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_ON_count_reg[7]/Q} .original_name {npg1/ON_count[7]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[0]} .original_name {{npg1/UP_accumulator[0]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[0]} .single_bit_orig_name {npg1/UP_accumulator[0]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[0]/Q} .original_name {npg1/UP_accumulator[0]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[1]} .original_name {{npg1/UP_accumulator[1]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[1]} .single_bit_orig_name {npg1/UP_accumulator[1]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[1]/Q} .original_name {npg1/UP_accumulator[1]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[2]} .original_name {{npg1/UP_accumulator[2]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[2]} .single_bit_orig_name {npg1/UP_accumulator[2]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[2]/Q} .original_name {npg1/UP_accumulator[2]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[3]} .original_name {{npg1/UP_accumulator[3]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[3]} .single_bit_orig_name {npg1/UP_accumulator[3]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[3]/Q} .original_name {npg1/UP_accumulator[3]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[4]} .original_name {{npg1/UP_accumulator[4]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[4]} .single_bit_orig_name {npg1/UP_accumulator[4]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[4]/Q} .original_name {npg1/UP_accumulator[4]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[5]} .original_name {{npg1/UP_accumulator[5]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[5]} .single_bit_orig_name {npg1/UP_accumulator[5]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[5]/Q} .original_name {npg1/UP_accumulator[5]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[6]} .original_name {{npg1/UP_accumulator[6]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[6]} .single_bit_orig_name {npg1/UP_accumulator[6]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[6]/Q} .original_name {npg1/UP_accumulator[6]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[7]} .original_name {{npg1/UP_accumulator[7]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[7]} .single_bit_orig_name {npg1/UP_accumulator[7]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[7]/Q} .original_name {npg1/UP_accumulator[7]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[8]} .original_name {{npg1/UP_accumulator[8]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[8]} .single_bit_orig_name {npg1/UP_accumulator[8]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[8]/Q} .original_name {npg1/UP_accumulator[8]/q}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[9]} .original_name {{npg1/UP_accumulator[9]}}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[9]} .single_bit_orig_name {npg1/UP_accumulator[9]}
set_db -quiet {inst:aska_dig/npg1_UP_accumulator_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_accumulator_reg[9]/Q} .original_name {npg1/UP_accumulator[9]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[0]} .original_name {{npg1/UP_count[0]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[0]} .single_bit_orig_name {npg1/UP_count[0]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[0]/Q} .original_name {npg1/UP_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[1]} .original_name {{npg1/UP_count[1]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[1]} .single_bit_orig_name {npg1/UP_count[1]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[1]/Q} .original_name {npg1/UP_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[2]} .original_name {{npg1/UP_count[2]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[2]} .single_bit_orig_name {npg1/UP_count[2]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[2]/Q} .original_name {npg1/UP_count[2]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[3]} .original_name {{npg1/UP_count[3]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[3]} .single_bit_orig_name {npg1/UP_count[3]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[3]/Q} .original_name {npg1/UP_count[3]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[4]} .original_name {{npg1/UP_count[4]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[4]} .single_bit_orig_name {npg1/UP_count[4]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[4]/Q} .original_name {npg1/UP_count[4]/q}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[5]} .original_name {{npg1/UP_count[5]}}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[5]} .single_bit_orig_name {npg1/UP_count[5]}
set_db -quiet {inst:aska_dig/npg1_UP_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_UP_count_reg[5]/Q} .original_name {npg1/UP_count[5]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[0]} .original_name {{npg1/freq_count[0]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[0]} .single_bit_orig_name {npg1/freq_count[0]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[0]/Q} .original_name {npg1/freq_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[1]} .original_name {{npg1/freq_count[1]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[1]} .single_bit_orig_name {npg1/freq_count[1]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[1]/Q} .original_name {npg1/freq_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[2]} .original_name {{npg1/freq_count[2]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[2]} .single_bit_orig_name {npg1/freq_count[2]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[2]/Q} .original_name {npg1/freq_count[2]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[3]} .original_name {{npg1/freq_count[3]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[3]} .single_bit_orig_name {npg1/freq_count[3]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[3]/Q} .original_name {npg1/freq_count[3]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[4]} .original_name {{npg1/freq_count[4]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[4]} .single_bit_orig_name {npg1/freq_count[4]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[4]/Q} .original_name {npg1/freq_count[4]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[5]} .original_name {{npg1/freq_count[5]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[5]} .single_bit_orig_name {npg1/freq_count[5]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[5]/Q} .original_name {npg1/freq_count[5]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[6]} .original_name {{npg1/freq_count[6]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[6]} .single_bit_orig_name {npg1/freq_count[6]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[6]/Q} .original_name {npg1/freq_count[6]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[7]} .original_name {{npg1/freq_count[7]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[7]} .single_bit_orig_name {npg1/freq_count[7]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[7]/Q} .original_name {npg1/freq_count[7]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[8]} .original_name {{npg1/freq_count[8]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[8]} .single_bit_orig_name {npg1/freq_count[8]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[8]/Q} .original_name {npg1/freq_count[8]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[9]} .original_name {{npg1/freq_count[9]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[9]} .single_bit_orig_name {npg1/freq_count[9]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[9]/Q} .original_name {npg1/freq_count[9]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[10]} .original_name {{npg1/freq_count[10]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[10]} .single_bit_orig_name {npg1/freq_count[10]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[10]/Q} .original_name {npg1/freq_count[10]/q}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[11]} .original_name {{npg1/freq_count[11]}}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[11]} .single_bit_orig_name {npg1/freq_count[11]}
set_db -quiet {inst:aska_dig/npg1_freq_count_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_freq_count_reg[11]/Q} .original_name {npg1/freq_count[11]/q}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[0]} .original_name {{npg1/on_off_ctrl[0]}}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[0]} .single_bit_orig_name {npg1/on_off_ctrl[0]}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_on_off_ctrl_reg[0]/Q} .original_name {npg1/on_off_ctrl[0]/q}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[1]} .original_name {{npg1/on_off_ctrl[1]}}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[1]} .single_bit_orig_name {npg1/on_off_ctrl[1]}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_on_off_ctrl_reg[1]/Q} .original_name {npg1/on_off_ctrl[1]/q}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[2]} .original_name {{npg1/on_off_ctrl[2]}}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[2]} .single_bit_orig_name {npg1/on_off_ctrl[2]}
set_db -quiet {inst:aska_dig/npg1_on_off_ctrl_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_on_off_ctrl_reg[2]/Q} .original_name {npg1/on_off_ctrl[2]/q}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[0]} .original_name {{npg1/phase_down_count[0]}}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[0]} .single_bit_orig_name {npg1/phase_down_count[0]}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_down_count_reg[0]/Q} .original_name {npg1/phase_down_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[1]} .original_name {{npg1/phase_down_count[1]}}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[1]} .single_bit_orig_name {npg1/phase_down_count[1]}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_down_count_reg[1]/Q} .original_name {npg1/phase_down_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[2]} .original_name {{npg1/phase_down_count[2]}}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[2]} .single_bit_orig_name {npg1/phase_down_count[2]}
set_db -quiet {inst:aska_dig/npg1_phase_down_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_down_count_reg[2]/Q} .original_name {npg1/phase_down_count[2]/q}
set_db -quiet inst:aska_dig/npg1_phase_down_state_reg .original_name npg1/phase_down_state
set_db -quiet inst:aska_dig/npg1_phase_down_state_reg .orig_hdl_instantiated false
set_db -quiet inst:aska_dig/npg1_phase_down_state_reg .single_bit_orig_name npg1/phase_down_state
set_db -quiet inst:aska_dig/npg1_phase_down_state_reg .gint_phase_inversion false
set_db -quiet pin:aska_dig/npg1_phase_down_state_reg/Q .original_name npg1/phase_down_state/q
set_db -quiet inst:aska_dig/npg1_phase_pause_ready_reg .original_name npg1/phase_pause_ready
set_db -quiet inst:aska_dig/npg1_phase_pause_ready_reg .orig_hdl_instantiated false
set_db -quiet inst:aska_dig/npg1_phase_pause_ready_reg .single_bit_orig_name npg1/phase_pause_ready
set_db -quiet inst:aska_dig/npg1_phase_pause_ready_reg .gint_phase_inversion false
set_db -quiet pin:aska_dig/npg1_phase_pause_ready_reg/Q .original_name npg1/phase_pause_ready/q
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[0]} .original_name {{npg1/phase_up_count[0]}}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[0]} .single_bit_orig_name {npg1/phase_up_count[0]}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_up_count_reg[0]/Q} .original_name {npg1/phase_up_count[0]/q}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[1]} .original_name {{npg1/phase_up_count[1]}}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[1]} .single_bit_orig_name {npg1/phase_up_count[1]}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_up_count_reg[1]/Q} .original_name {npg1/phase_up_count[1]/q}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[2]} .original_name {{npg1/phase_up_count[2]}}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[2]} .single_bit_orig_name {npg1/phase_up_count[2]}
set_db -quiet {inst:aska_dig/npg1_phase_up_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/npg1_phase_up_count_reg[2]/Q} .original_name {npg1/phase_up_count[2]/q}
set_db -quiet inst:aska_dig/npg1_phase_up_state_reg .original_name npg1/phase_up_state
set_db -quiet inst:aska_dig/npg1_phase_up_state_reg .orig_hdl_instantiated false
set_db -quiet inst:aska_dig/npg1_phase_up_state_reg .single_bit_orig_name npg1/phase_up_state
set_db -quiet inst:aska_dig/npg1_phase_up_state_reg .gint_phase_inversion false
set_db -quiet pin:aska_dig/npg1_phase_up_state_reg/Q .original_name npg1/phase_up_state/q
set_db -quiet inst:aska_dig/npg1_pulse_aux_reg .original_name npg1/pulse_aux
set_db -quiet inst:aska_dig/npg1_pulse_aux_reg .orig_hdl_instantiated false
set_db -quiet inst:aska_dig/npg1_pulse_aux_reg .single_bit_orig_name npg1/pulse_aux
set_db -quiet inst:aska_dig/npg1_pulse_aux_reg .gint_phase_inversion false
set_db -quiet pin:aska_dig/npg1_pulse_aux_reg/Q .original_name npg1/pulse_aux/q
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[0]} .original_name {{spi1/conf0_meta[0]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[0]} .single_bit_orig_name {spi1/conf0_meta[0]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[0]/Q} .original_name {spi1/conf0_meta[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[1]} .original_name {{spi1/conf0_meta[1]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[1]} .single_bit_orig_name {spi1/conf0_meta[1]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[1]/Q} .original_name {spi1/conf0_meta[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[2]} .original_name {{spi1/conf0_meta[2]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[2]} .single_bit_orig_name {spi1/conf0_meta[2]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[2]/Q} .original_name {spi1/conf0_meta[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[3]} .original_name {{spi1/conf0_meta[3]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[3]} .single_bit_orig_name {spi1/conf0_meta[3]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[3]/Q} .original_name {spi1/conf0_meta[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[4]} .original_name {{spi1/conf0_meta[4]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[4]} .single_bit_orig_name {spi1/conf0_meta[4]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[4]/Q} .original_name {spi1/conf0_meta[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[5]} .original_name {{spi1/conf0_meta[5]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[5]} .single_bit_orig_name {spi1/conf0_meta[5]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[5]/Q} .original_name {spi1/conf0_meta[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[6]} .original_name {{spi1/conf0_meta[6]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[6]} .single_bit_orig_name {spi1/conf0_meta[6]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[6]/Q} .original_name {spi1/conf0_meta[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[7]} .original_name {{spi1/conf0_meta[7]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[7]} .single_bit_orig_name {spi1/conf0_meta[7]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[7]/Q} .original_name {spi1/conf0_meta[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[8]} .original_name {{spi1/conf0_meta[8]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[8]} .single_bit_orig_name {spi1/conf0_meta[8]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[8]/Q} .original_name {spi1/conf0_meta[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[9]} .original_name {{spi1/conf0_meta[9]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[9]} .single_bit_orig_name {spi1/conf0_meta[9]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[9]/Q} .original_name {spi1/conf0_meta[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[10]} .original_name {{spi1/conf0_meta[10]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[10]} .single_bit_orig_name {spi1/conf0_meta[10]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[10]/Q} .original_name {spi1/conf0_meta[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[11]} .original_name {{spi1/conf0_meta[11]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[11]} .single_bit_orig_name {spi1/conf0_meta[11]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[11]/Q} .original_name {spi1/conf0_meta[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[12]} .original_name {{spi1/conf0_meta[12]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[12]} .single_bit_orig_name {spi1/conf0_meta[12]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[12]/Q} .original_name {spi1/conf0_meta[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[13]} .original_name {{spi1/conf0_meta[13]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[13]} .single_bit_orig_name {spi1/conf0_meta[13]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[13]/Q} .original_name {spi1/conf0_meta[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[14]} .original_name {{spi1/conf0_meta[14]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[14]} .single_bit_orig_name {spi1/conf0_meta[14]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[14]/Q} .original_name {spi1/conf0_meta[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[15]} .original_name {{spi1/conf0_meta[15]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[15]} .single_bit_orig_name {spi1/conf0_meta[15]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[15]/Q} .original_name {spi1/conf0_meta[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[16]} .original_name {{spi1/conf0_meta[16]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[16]} .single_bit_orig_name {spi1/conf0_meta[16]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[16]/Q} .original_name {spi1/conf0_meta[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[17]} .original_name {{spi1/conf0_meta[17]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[17]} .single_bit_orig_name {spi1/conf0_meta[17]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[17]/Q} .original_name {spi1/conf0_meta[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[18]} .original_name {{spi1/conf0_meta[18]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[18]} .single_bit_orig_name {spi1/conf0_meta[18]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[18]/Q} .original_name {spi1/conf0_meta[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[19]} .original_name {{spi1/conf0_meta[19]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[19]} .single_bit_orig_name {spi1/conf0_meta[19]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[19]/Q} .original_name {spi1/conf0_meta[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[20]} .original_name {{spi1/conf0_meta[20]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[20]} .single_bit_orig_name {spi1/conf0_meta[20]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[20]/Q} .original_name {spi1/conf0_meta[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[21]} .original_name {{spi1/conf0_meta[21]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[21]} .single_bit_orig_name {spi1/conf0_meta[21]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[21]/Q} .original_name {spi1/conf0_meta[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[22]} .original_name {{spi1/conf0_meta[22]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[22]} .single_bit_orig_name {spi1/conf0_meta[22]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[22]/Q} .original_name {spi1/conf0_meta[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[23]} .original_name {{spi1/conf0_meta[23]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[23]} .single_bit_orig_name {spi1/conf0_meta[23]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[23]/Q} .original_name {spi1/conf0_meta[23]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[24]} .original_name {{spi1/conf0_meta[24]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[24]} .single_bit_orig_name {spi1/conf0_meta[24]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[24]/Q} .original_name {spi1/conf0_meta[24]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[25]} .original_name {{spi1/conf0_meta[25]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[25]} .single_bit_orig_name {spi1/conf0_meta[25]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[25]/Q} .original_name {spi1/conf0_meta[25]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[26]} .original_name {{spi1/conf0_meta[26]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[26]} .single_bit_orig_name {spi1/conf0_meta[26]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[26]/Q} .original_name {spi1/conf0_meta[26]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[27]} .original_name {{spi1/conf0_meta[27]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[27]} .single_bit_orig_name {spi1/conf0_meta[27]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[27]/Q} .original_name {spi1/conf0_meta[27]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[28]} .original_name {{spi1/conf0_meta[28]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[28]} .single_bit_orig_name {spi1/conf0_meta[28]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[28]/Q} .original_name {spi1/conf0_meta[28]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[29]} .original_name {{spi1/conf0_meta[29]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[29]} .single_bit_orig_name {spi1/conf0_meta[29]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[29]/Q} .original_name {spi1/conf0_meta[29]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[30]} .original_name {{spi1/conf0_meta[30]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[30]} .single_bit_orig_name {spi1/conf0_meta[30]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[30]/Q} .original_name {spi1/conf0_meta[30]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[31]} .original_name {{spi1/conf0_meta[31]}}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[31]} .single_bit_orig_name {spi1/conf0_meta[31]}
set_db -quiet {inst:aska_dig/spi1_conf0_meta_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_meta_reg[31]/Q} .original_name {spi1/conf0_meta[31]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[0]} .original_name {{spi1/conf0[0]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[0]} .single_bit_orig_name {spi1/conf0[0]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[0]/Q} .original_name {spi1/conf0[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[1]} .original_name {{spi1/conf0[1]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[1]} .single_bit_orig_name {spi1/conf0[1]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[1]/Q} .original_name {spi1/conf0[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[2]} .original_name {{spi1/conf0[2]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[2]} .single_bit_orig_name {spi1/conf0[2]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[2]/Q} .original_name {spi1/conf0[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[3]} .original_name {{spi1/conf0[3]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[3]} .single_bit_orig_name {spi1/conf0[3]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[3]/Q} .original_name {spi1/conf0[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[4]} .original_name {{spi1/conf0[4]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[4]} .single_bit_orig_name {spi1/conf0[4]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[4]/Q} .original_name {spi1/conf0[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[5]} .original_name {{spi1/conf0[5]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[5]} .single_bit_orig_name {spi1/conf0[5]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[5]/Q} .original_name {spi1/conf0[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[6]} .original_name {{spi1/conf0[6]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[6]} .single_bit_orig_name {spi1/conf0[6]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[6]/Q} .original_name {spi1/conf0[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[7]} .original_name {{spi1/conf0[7]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[7]} .single_bit_orig_name {spi1/conf0[7]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[7]/Q} .original_name {spi1/conf0[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[8]} .original_name {{spi1/conf0[8]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[8]} .single_bit_orig_name {spi1/conf0[8]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[8]/Q} .original_name {spi1/conf0[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[9]} .original_name {{spi1/conf0[9]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[9]} .single_bit_orig_name {spi1/conf0[9]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[9]/Q} .original_name {spi1/conf0[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[10]} .original_name {{spi1/conf0[10]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[10]} .single_bit_orig_name {spi1/conf0[10]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[10]/Q} .original_name {spi1/conf0[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[11]} .original_name {{spi1/conf0[11]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[11]} .single_bit_orig_name {spi1/conf0[11]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[11]/Q} .original_name {spi1/conf0[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[12]} .original_name {{spi1/conf0[12]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[12]} .single_bit_orig_name {spi1/conf0[12]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[12]/Q} .original_name {spi1/conf0[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[13]} .original_name {{spi1/conf0[13]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[13]} .single_bit_orig_name {spi1/conf0[13]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[13]/Q} .original_name {spi1/conf0[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[14]} .original_name {{spi1/conf0[14]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[14]} .single_bit_orig_name {spi1/conf0[14]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[14]/Q} .original_name {spi1/conf0[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[15]} .original_name {{spi1/conf0[15]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[15]} .single_bit_orig_name {spi1/conf0[15]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[15]/Q} .original_name {spi1/conf0[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[16]} .original_name {{spi1/conf0[16]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[16]} .single_bit_orig_name {spi1/conf0[16]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[16]/Q} .original_name {spi1/conf0[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[17]} .original_name {{spi1/conf0[17]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[17]} .single_bit_orig_name {spi1/conf0[17]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[17]/Q} .original_name {spi1/conf0[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[18]} .original_name {{spi1/conf0[18]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[18]} .single_bit_orig_name {spi1/conf0[18]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[18]/Q} .original_name {spi1/conf0[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[19]} .original_name {{spi1/conf0[19]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[19]} .single_bit_orig_name {spi1/conf0[19]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[19]/Q} .original_name {spi1/conf0[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[20]} .original_name {{spi1/conf0[20]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[20]} .single_bit_orig_name {spi1/conf0[20]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[20]/Q} .original_name {spi1/conf0[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[21]} .original_name {{spi1/conf0[21]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[21]} .single_bit_orig_name {spi1/conf0[21]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[21]/Q} .original_name {spi1/conf0[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[22]} .original_name {{spi1/conf0[22]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[22]} .single_bit_orig_name {spi1/conf0[22]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[22]/Q} .original_name {spi1/conf0[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[23]} .original_name {{spi1/conf0[23]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[23]} .single_bit_orig_name {spi1/conf0[23]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[23]/Q} .original_name {spi1/conf0[23]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[24]} .original_name {{spi1/conf0[24]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[24]} .single_bit_orig_name {spi1/conf0[24]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[24]/Q} .original_name {spi1/conf0[24]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[25]} .original_name {{spi1/conf0[25]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[25]} .single_bit_orig_name {spi1/conf0[25]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[25]/Q} .original_name {spi1/conf0[25]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[26]} .original_name {{spi1/conf0[26]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[26]} .single_bit_orig_name {spi1/conf0[26]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[26]/Q} .original_name {spi1/conf0[26]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[27]} .original_name {{spi1/conf0[27]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[27]} .single_bit_orig_name {spi1/conf0[27]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[27]/Q} .original_name {spi1/conf0[27]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[28]} .original_name {{spi1/conf0[28]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[28]} .single_bit_orig_name {spi1/conf0[28]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[28]/Q} .original_name {spi1/conf0[28]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[29]} .original_name {{spi1/conf0[29]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[29]} .single_bit_orig_name {spi1/conf0[29]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[29]/Q} .original_name {spi1/conf0[29]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[30]} .original_name {{spi1/conf0[30]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[30]} .single_bit_orig_name {spi1/conf0[30]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[30]/Q} .original_name {spi1/conf0[30]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[31]} .original_name {{spi1/conf0[31]}}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_reg[31]} .single_bit_orig_name {spi1/conf0[31]}
set_db -quiet {inst:aska_dig/spi1_conf0_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_reg[31]/Q} .original_name {spi1/conf0[31]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[0]} .original_name {{spi1/conf1_meta[0]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[0]} .single_bit_orig_name {spi1/conf1_meta[0]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[0]/Q} .original_name {spi1/conf1_meta[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[1]} .original_name {{spi1/conf1_meta[1]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[1]} .single_bit_orig_name {spi1/conf1_meta[1]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[1]/Q} .original_name {spi1/conf1_meta[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[2]} .original_name {{spi1/conf1_meta[2]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[2]} .single_bit_orig_name {spi1/conf1_meta[2]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[2]/Q} .original_name {spi1/conf1_meta[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[3]} .original_name {{spi1/conf1_meta[3]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[3]} .single_bit_orig_name {spi1/conf1_meta[3]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[3]/Q} .original_name {spi1/conf1_meta[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[4]} .original_name {{spi1/conf1_meta[4]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[4]} .single_bit_orig_name {spi1/conf1_meta[4]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[4]/Q} .original_name {spi1/conf1_meta[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[5]} .original_name {{spi1/conf1_meta[5]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[5]} .single_bit_orig_name {spi1/conf1_meta[5]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[5]/Q} .original_name {spi1/conf1_meta[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[6]} .original_name {{spi1/conf1_meta[6]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[6]} .single_bit_orig_name {spi1/conf1_meta[6]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[6]/Q} .original_name {spi1/conf1_meta[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[7]} .original_name {{spi1/conf1_meta[7]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[7]} .single_bit_orig_name {spi1/conf1_meta[7]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[7]/Q} .original_name {spi1/conf1_meta[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[8]} .original_name {{spi1/conf1_meta[8]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[8]} .single_bit_orig_name {spi1/conf1_meta[8]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[8]/Q} .original_name {spi1/conf1_meta[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[9]} .original_name {{spi1/conf1_meta[9]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[9]} .single_bit_orig_name {spi1/conf1_meta[9]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[9]/Q} .original_name {spi1/conf1_meta[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[10]} .original_name {{spi1/conf1_meta[10]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[10]} .single_bit_orig_name {spi1/conf1_meta[10]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[10]/Q} .original_name {spi1/conf1_meta[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[11]} .original_name {{spi1/conf1_meta[11]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[11]} .single_bit_orig_name {spi1/conf1_meta[11]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[11]/Q} .original_name {spi1/conf1_meta[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[12]} .original_name {{spi1/conf1_meta[12]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[12]} .single_bit_orig_name {spi1/conf1_meta[12]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[12]/Q} .original_name {spi1/conf1_meta[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[13]} .original_name {{spi1/conf1_meta[13]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[13]} .single_bit_orig_name {spi1/conf1_meta[13]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[13]/Q} .original_name {spi1/conf1_meta[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[14]} .original_name {{spi1/conf1_meta[14]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[14]} .single_bit_orig_name {spi1/conf1_meta[14]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[14]/Q} .original_name {spi1/conf1_meta[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[15]} .original_name {{spi1/conf1_meta[15]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[15]} .single_bit_orig_name {spi1/conf1_meta[15]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[15]/Q} .original_name {spi1/conf1_meta[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[16]} .original_name {{spi1/conf1_meta[16]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[16]} .single_bit_orig_name {spi1/conf1_meta[16]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[16]/Q} .original_name {spi1/conf1_meta[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[17]} .original_name {{spi1/conf1_meta[17]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[17]} .single_bit_orig_name {spi1/conf1_meta[17]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[17]/Q} .original_name {spi1/conf1_meta[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[18]} .original_name {{spi1/conf1_meta[18]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[18]} .single_bit_orig_name {spi1/conf1_meta[18]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[18]/Q} .original_name {spi1/conf1_meta[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[19]} .original_name {{spi1/conf1_meta[19]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[19]} .single_bit_orig_name {spi1/conf1_meta[19]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[19]/Q} .original_name {spi1/conf1_meta[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[20]} .original_name {{spi1/conf1_meta[20]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[20]} .single_bit_orig_name {spi1/conf1_meta[20]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[20]/Q} .original_name {spi1/conf1_meta[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[21]} .original_name {{spi1/conf1_meta[21]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[21]} .single_bit_orig_name {spi1/conf1_meta[21]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[21]/Q} .original_name {spi1/conf1_meta[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[22]} .original_name {{spi1/conf1_meta[22]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[22]} .single_bit_orig_name {spi1/conf1_meta[22]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[22]/Q} .original_name {spi1/conf1_meta[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[23]} .original_name {{spi1/conf1_meta[23]}}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[23]} .single_bit_orig_name {spi1/conf1_meta[23]}
set_db -quiet {inst:aska_dig/spi1_conf1_meta_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_meta_reg[23]/Q} .original_name {spi1/conf1_meta[23]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[0]} .original_name {{spi1/conf1[0]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[0]} .single_bit_orig_name {spi1/conf1[0]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[0]/Q} .original_name {spi1/conf1[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[1]} .original_name {{spi1/conf1[1]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[1]} .single_bit_orig_name {spi1/conf1[1]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[1]/Q} .original_name {spi1/conf1[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[2]} .original_name {{spi1/conf1[2]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[2]} .single_bit_orig_name {spi1/conf1[2]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[2]/Q} .original_name {spi1/conf1[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[3]} .original_name {{spi1/conf1[3]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[3]} .single_bit_orig_name {spi1/conf1[3]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[3]/Q} .original_name {spi1/conf1[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[4]} .original_name {{spi1/conf1[4]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[4]} .single_bit_orig_name {spi1/conf1[4]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[4]/Q} .original_name {spi1/conf1[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[5]} .original_name {{spi1/conf1[5]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[5]} .single_bit_orig_name {spi1/conf1[5]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[5]/Q} .original_name {spi1/conf1[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[6]} .original_name {{spi1/conf1[6]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[6]} .single_bit_orig_name {spi1/conf1[6]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[6]/Q} .original_name {spi1/conf1[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[7]} .original_name {{spi1/conf1[7]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[7]} .single_bit_orig_name {spi1/conf1[7]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[7]/Q} .original_name {spi1/conf1[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[8]} .original_name {{spi1/conf1[8]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[8]} .single_bit_orig_name {spi1/conf1[8]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[8]/Q} .original_name {spi1/conf1[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[9]} .original_name {{spi1/conf1[9]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[9]} .single_bit_orig_name {spi1/conf1[9]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[9]/Q} .original_name {spi1/conf1[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[10]} .original_name {{spi1/conf1[10]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[10]} .single_bit_orig_name {spi1/conf1[10]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[10]/Q} .original_name {spi1/conf1[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[11]} .original_name {{spi1/conf1[11]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[11]} .single_bit_orig_name {spi1/conf1[11]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[11]/Q} .original_name {spi1/conf1[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[12]} .original_name {{spi1/conf1[12]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[12]} .single_bit_orig_name {spi1/conf1[12]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[12]/Q} .original_name {spi1/conf1[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[13]} .original_name {{spi1/conf1[13]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[13]} .single_bit_orig_name {spi1/conf1[13]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[13]/Q} .original_name {spi1/conf1[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[14]} .original_name {{spi1/conf1[14]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[14]} .single_bit_orig_name {spi1/conf1[14]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[14]/Q} .original_name {spi1/conf1[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[15]} .original_name {{spi1/conf1[15]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[15]} .single_bit_orig_name {spi1/conf1[15]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[15]/Q} .original_name {spi1/conf1[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[16]} .original_name {{spi1/conf1[16]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[16]} .single_bit_orig_name {spi1/conf1[16]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[16]/Q} .original_name {spi1/conf1[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[17]} .original_name {{spi1/conf1[17]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[17]} .single_bit_orig_name {spi1/conf1[17]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[17]/Q} .original_name {spi1/conf1[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[18]} .original_name {{spi1/conf1[18]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[18]} .single_bit_orig_name {spi1/conf1[18]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[18]/Q} .original_name {spi1/conf1[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[19]} .original_name {{spi1/conf1[19]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[19]} .single_bit_orig_name {spi1/conf1[19]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[19]/Q} .original_name {spi1/conf1[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[20]} .original_name {{spi1/conf1[20]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[20]} .single_bit_orig_name {spi1/conf1[20]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[20]/Q} .original_name {spi1/conf1[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[21]} .original_name {{spi1/conf1[21]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[21]} .single_bit_orig_name {spi1/conf1[21]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[21]/Q} .original_name {spi1/conf1[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[22]} .original_name {{spi1/conf1[22]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[22]} .single_bit_orig_name {spi1/conf1[22]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[22]/Q} .original_name {spi1/conf1[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[23]} .original_name {{spi1/conf1[23]}}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_reg[23]} .single_bit_orig_name {spi1/conf1[23]}
set_db -quiet {inst:aska_dig/spi1_conf1_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_reg[23]/Q} .original_name {spi1/conf1[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[0]} .original_name {{spi1/ele1_meta[0]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[0]} .single_bit_orig_name {spi1/ele1_meta[0]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[0]/Q} .original_name {spi1/ele1_meta[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[1]} .original_name {{spi1/ele1_meta[1]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[1]} .single_bit_orig_name {spi1/ele1_meta[1]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[1]/Q} .original_name {spi1/ele1_meta[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[2]} .original_name {{spi1/ele1_meta[2]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[2]} .single_bit_orig_name {spi1/ele1_meta[2]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[2]/Q} .original_name {spi1/ele1_meta[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[3]} .original_name {{spi1/ele1_meta[3]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[3]} .single_bit_orig_name {spi1/ele1_meta[3]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[3]/Q} .original_name {spi1/ele1_meta[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[4]} .original_name {{spi1/ele1_meta[4]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[4]} .single_bit_orig_name {spi1/ele1_meta[4]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[4]/Q} .original_name {spi1/ele1_meta[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[5]} .original_name {{spi1/ele1_meta[5]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[5]} .single_bit_orig_name {spi1/ele1_meta[5]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[5]/Q} .original_name {spi1/ele1_meta[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[6]} .original_name {{spi1/ele1_meta[6]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[6]} .single_bit_orig_name {spi1/ele1_meta[6]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[6]/Q} .original_name {spi1/ele1_meta[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[7]} .original_name {{spi1/ele1_meta[7]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[7]} .single_bit_orig_name {spi1/ele1_meta[7]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[7]/Q} .original_name {spi1/ele1_meta[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[8]} .original_name {{spi1/ele1_meta[8]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[8]} .single_bit_orig_name {spi1/ele1_meta[8]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[8]/Q} .original_name {spi1/ele1_meta[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[9]} .original_name {{spi1/ele1_meta[9]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[9]} .single_bit_orig_name {spi1/ele1_meta[9]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[9]/Q} .original_name {spi1/ele1_meta[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[10]} .original_name {{spi1/ele1_meta[10]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[10]} .single_bit_orig_name {spi1/ele1_meta[10]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[10]/Q} .original_name {spi1/ele1_meta[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[11]} .original_name {{spi1/ele1_meta[11]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[11]} .single_bit_orig_name {spi1/ele1_meta[11]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[11]/Q} .original_name {spi1/ele1_meta[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[12]} .original_name {{spi1/ele1_meta[12]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[12]} .single_bit_orig_name {spi1/ele1_meta[12]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[12]/Q} .original_name {spi1/ele1_meta[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[13]} .original_name {{spi1/ele1_meta[13]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[13]} .single_bit_orig_name {spi1/ele1_meta[13]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[13]/Q} .original_name {spi1/ele1_meta[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[14]} .original_name {{spi1/ele1_meta[14]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[14]} .single_bit_orig_name {spi1/ele1_meta[14]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[14]/Q} .original_name {spi1/ele1_meta[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[15]} .original_name {{spi1/ele1_meta[15]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[15]} .single_bit_orig_name {spi1/ele1_meta[15]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[15]/Q} .original_name {spi1/ele1_meta[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[16]} .original_name {{spi1/ele1_meta[16]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[16]} .single_bit_orig_name {spi1/ele1_meta[16]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[16]/Q} .original_name {spi1/ele1_meta[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[17]} .original_name {{spi1/ele1_meta[17]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[17]} .single_bit_orig_name {spi1/ele1_meta[17]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[17]/Q} .original_name {spi1/ele1_meta[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[18]} .original_name {{spi1/ele1_meta[18]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[18]} .single_bit_orig_name {spi1/ele1_meta[18]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[18]/Q} .original_name {spi1/ele1_meta[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[19]} .original_name {{spi1/ele1_meta[19]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[19]} .single_bit_orig_name {spi1/ele1_meta[19]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[19]/Q} .original_name {spi1/ele1_meta[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[20]} .original_name {{spi1/ele1_meta[20]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[20]} .single_bit_orig_name {spi1/ele1_meta[20]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[20]/Q} .original_name {spi1/ele1_meta[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[21]} .original_name {{spi1/ele1_meta[21]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[21]} .single_bit_orig_name {spi1/ele1_meta[21]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[21]/Q} .original_name {spi1/ele1_meta[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[22]} .original_name {{spi1/ele1_meta[22]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[22]} .single_bit_orig_name {spi1/ele1_meta[22]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[22]/Q} .original_name {spi1/ele1_meta[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[23]} .original_name {{spi1/ele1_meta[23]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[23]} .single_bit_orig_name {spi1/ele1_meta[23]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[23]/Q} .original_name {spi1/ele1_meta[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[24]} .original_name {{spi1/ele1_meta[24]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[24]} .single_bit_orig_name {spi1/ele1_meta[24]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[24]/Q} .original_name {spi1/ele1_meta[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[25]} .original_name {{spi1/ele1_meta[25]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[25]} .single_bit_orig_name {spi1/ele1_meta[25]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[25]/Q} .original_name {spi1/ele1_meta[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[26]} .original_name {{spi1/ele1_meta[26]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[26]} .single_bit_orig_name {spi1/ele1_meta[26]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[26]/Q} .original_name {spi1/ele1_meta[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[27]} .original_name {{spi1/ele1_meta[27]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[27]} .single_bit_orig_name {spi1/ele1_meta[27]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[27]/Q} .original_name {spi1/ele1_meta[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[28]} .original_name {{spi1/ele1_meta[28]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[28]} .single_bit_orig_name {spi1/ele1_meta[28]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[28]/Q} .original_name {spi1/ele1_meta[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[29]} .original_name {{spi1/ele1_meta[29]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[29]} .single_bit_orig_name {spi1/ele1_meta[29]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[29]/Q} .original_name {spi1/ele1_meta[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[30]} .original_name {{spi1/ele1_meta[30]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[30]} .single_bit_orig_name {spi1/ele1_meta[30]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[30]/Q} .original_name {spi1/ele1_meta[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[31]} .original_name {{spi1/ele1_meta[31]}}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[31]} .single_bit_orig_name {spi1/ele1_meta[31]}
set_db -quiet {inst:aska_dig/spi1_ele1_meta_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_meta_reg[31]/Q} .original_name {spi1/ele1_meta[31]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[0]} .original_name {{spi1/ele1[0]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[0]} .single_bit_orig_name {spi1/ele1[0]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[0]/Q} .original_name {spi1/ele1[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[1]} .original_name {{spi1/ele1[1]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[1]} .single_bit_orig_name {spi1/ele1[1]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[1]/Q} .original_name {spi1/ele1[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[2]} .original_name {{spi1/ele1[2]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[2]} .single_bit_orig_name {spi1/ele1[2]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[2]/Q} .original_name {spi1/ele1[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[3]} .original_name {{spi1/ele1[3]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[3]} .single_bit_orig_name {spi1/ele1[3]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[3]/Q} .original_name {spi1/ele1[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[4]} .original_name {{spi1/ele1[4]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[4]} .single_bit_orig_name {spi1/ele1[4]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[4]/Q} .original_name {spi1/ele1[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[5]} .original_name {{spi1/ele1[5]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[5]} .single_bit_orig_name {spi1/ele1[5]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[5]/Q} .original_name {spi1/ele1[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[6]} .original_name {{spi1/ele1[6]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[6]} .single_bit_orig_name {spi1/ele1[6]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[6]/Q} .original_name {spi1/ele1[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[7]} .original_name {{spi1/ele1[7]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[7]} .single_bit_orig_name {spi1/ele1[7]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[7]/Q} .original_name {spi1/ele1[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[8]} .original_name {{spi1/ele1[8]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[8]} .single_bit_orig_name {spi1/ele1[8]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[8]/Q} .original_name {spi1/ele1[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[9]} .original_name {{spi1/ele1[9]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[9]} .single_bit_orig_name {spi1/ele1[9]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[9]/Q} .original_name {spi1/ele1[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[10]} .original_name {{spi1/ele1[10]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[10]} .single_bit_orig_name {spi1/ele1[10]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[10]/Q} .original_name {spi1/ele1[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[11]} .original_name {{spi1/ele1[11]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[11]} .single_bit_orig_name {spi1/ele1[11]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[11]/Q} .original_name {spi1/ele1[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[12]} .original_name {{spi1/ele1[12]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[12]} .single_bit_orig_name {spi1/ele1[12]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[12]/Q} .original_name {spi1/ele1[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[13]} .original_name {{spi1/ele1[13]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[13]} .single_bit_orig_name {spi1/ele1[13]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[13]/Q} .original_name {spi1/ele1[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[14]} .original_name {{spi1/ele1[14]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[14]} .single_bit_orig_name {spi1/ele1[14]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[14]/Q} .original_name {spi1/ele1[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[15]} .original_name {{spi1/ele1[15]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[15]} .single_bit_orig_name {spi1/ele1[15]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[15]/Q} .original_name {spi1/ele1[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[16]} .original_name {{spi1/ele1[16]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[16]} .single_bit_orig_name {spi1/ele1[16]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[16]/Q} .original_name {spi1/ele1[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[17]} .original_name {{spi1/ele1[17]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[17]} .single_bit_orig_name {spi1/ele1[17]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[17]/Q} .original_name {spi1/ele1[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[18]} .original_name {{spi1/ele1[18]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[18]} .single_bit_orig_name {spi1/ele1[18]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[18]/Q} .original_name {spi1/ele1[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[19]} .original_name {{spi1/ele1[19]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[19]} .single_bit_orig_name {spi1/ele1[19]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[19]/Q} .original_name {spi1/ele1[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[20]} .original_name {{spi1/ele1[20]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[20]} .single_bit_orig_name {spi1/ele1[20]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[20]/Q} .original_name {spi1/ele1[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[21]} .original_name {{spi1/ele1[21]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[21]} .single_bit_orig_name {spi1/ele1[21]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[21]/Q} .original_name {spi1/ele1[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[22]} .original_name {{spi1/ele1[22]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[22]} .single_bit_orig_name {spi1/ele1[22]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[22]/Q} .original_name {spi1/ele1[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[23]} .original_name {{spi1/ele1[23]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[23]} .single_bit_orig_name {spi1/ele1[23]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[23]/Q} .original_name {spi1/ele1[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[24]} .original_name {{spi1/ele1[24]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[24]} .single_bit_orig_name {spi1/ele1[24]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[24]/Q} .original_name {spi1/ele1[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[25]} .original_name {{spi1/ele1[25]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[25]} .single_bit_orig_name {spi1/ele1[25]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[25]/Q} .original_name {spi1/ele1[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[26]} .original_name {{spi1/ele1[26]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[26]} .single_bit_orig_name {spi1/ele1[26]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[26]/Q} .original_name {spi1/ele1[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[27]} .original_name {{spi1/ele1[27]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[27]} .single_bit_orig_name {spi1/ele1[27]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[27]/Q} .original_name {spi1/ele1[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[28]} .original_name {{spi1/ele1[28]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[28]} .single_bit_orig_name {spi1/ele1[28]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[28]/Q} .original_name {spi1/ele1[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[29]} .original_name {{spi1/ele1[29]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[29]} .single_bit_orig_name {spi1/ele1[29]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[29]/Q} .original_name {spi1/ele1[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[30]} .original_name {{spi1/ele1[30]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[30]} .single_bit_orig_name {spi1/ele1[30]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[30]/Q} .original_name {spi1/ele1[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[31]} .original_name {{spi1/ele1[31]}}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_reg[31]} .single_bit_orig_name {spi1/ele1[31]}
set_db -quiet {inst:aska_dig/spi1_ele1_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_reg[31]/Q} .original_name {spi1/ele1[31]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[0]} .original_name {{spi1/ele2_meta[0]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[0]} .single_bit_orig_name {spi1/ele2_meta[0]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[0]/Q} .original_name {spi1/ele2_meta[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[1]} .original_name {{spi1/ele2_meta[1]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[1]} .single_bit_orig_name {spi1/ele2_meta[1]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[1]/Q} .original_name {spi1/ele2_meta[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[2]} .original_name {{spi1/ele2_meta[2]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[2]} .single_bit_orig_name {spi1/ele2_meta[2]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[2]/Q} .original_name {spi1/ele2_meta[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[3]} .original_name {{spi1/ele2_meta[3]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[3]} .single_bit_orig_name {spi1/ele2_meta[3]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[3]/Q} .original_name {spi1/ele2_meta[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[4]} .original_name {{spi1/ele2_meta[4]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[4]} .single_bit_orig_name {spi1/ele2_meta[4]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[4]/Q} .original_name {spi1/ele2_meta[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[5]} .original_name {{spi1/ele2_meta[5]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[5]} .single_bit_orig_name {spi1/ele2_meta[5]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[5]/Q} .original_name {spi1/ele2_meta[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[6]} .original_name {{spi1/ele2_meta[6]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[6]} .single_bit_orig_name {spi1/ele2_meta[6]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[6]/Q} .original_name {spi1/ele2_meta[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[7]} .original_name {{spi1/ele2_meta[7]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[7]} .single_bit_orig_name {spi1/ele2_meta[7]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[7]/Q} .original_name {spi1/ele2_meta[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[8]} .original_name {{spi1/ele2_meta[8]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[8]} .single_bit_orig_name {spi1/ele2_meta[8]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[8]/Q} .original_name {spi1/ele2_meta[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[9]} .original_name {{spi1/ele2_meta[9]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[9]} .single_bit_orig_name {spi1/ele2_meta[9]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[9]/Q} .original_name {spi1/ele2_meta[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[10]} .original_name {{spi1/ele2_meta[10]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[10]} .single_bit_orig_name {spi1/ele2_meta[10]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[10]/Q} .original_name {spi1/ele2_meta[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[11]} .original_name {{spi1/ele2_meta[11]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[11]} .single_bit_orig_name {spi1/ele2_meta[11]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[11]/Q} .original_name {spi1/ele2_meta[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[12]} .original_name {{spi1/ele2_meta[12]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[12]} .single_bit_orig_name {spi1/ele2_meta[12]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[12]/Q} .original_name {spi1/ele2_meta[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[13]} .original_name {{spi1/ele2_meta[13]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[13]} .single_bit_orig_name {spi1/ele2_meta[13]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[13]/Q} .original_name {spi1/ele2_meta[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[14]} .original_name {{spi1/ele2_meta[14]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[14]} .single_bit_orig_name {spi1/ele2_meta[14]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[14]/Q} .original_name {spi1/ele2_meta[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[15]} .original_name {{spi1/ele2_meta[15]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[15]} .single_bit_orig_name {spi1/ele2_meta[15]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[15]/Q} .original_name {spi1/ele2_meta[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[16]} .original_name {{spi1/ele2_meta[16]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[16]} .single_bit_orig_name {spi1/ele2_meta[16]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[16]/Q} .original_name {spi1/ele2_meta[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[17]} .original_name {{spi1/ele2_meta[17]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[17]} .single_bit_orig_name {spi1/ele2_meta[17]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[17]/Q} .original_name {spi1/ele2_meta[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[18]} .original_name {{spi1/ele2_meta[18]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[18]} .single_bit_orig_name {spi1/ele2_meta[18]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[18]/Q} .original_name {spi1/ele2_meta[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[19]} .original_name {{spi1/ele2_meta[19]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[19]} .single_bit_orig_name {spi1/ele2_meta[19]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[19]/Q} .original_name {spi1/ele2_meta[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[20]} .original_name {{spi1/ele2_meta[20]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[20]} .single_bit_orig_name {spi1/ele2_meta[20]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[20]/Q} .original_name {spi1/ele2_meta[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[21]} .original_name {{spi1/ele2_meta[21]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[21]} .single_bit_orig_name {spi1/ele2_meta[21]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[21]/Q} .original_name {spi1/ele2_meta[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[22]} .original_name {{spi1/ele2_meta[22]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[22]} .single_bit_orig_name {spi1/ele2_meta[22]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[22]/Q} .original_name {spi1/ele2_meta[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[23]} .original_name {{spi1/ele2_meta[23]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[23]} .single_bit_orig_name {spi1/ele2_meta[23]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[23]/Q} .original_name {spi1/ele2_meta[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[24]} .original_name {{spi1/ele2_meta[24]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[24]} .single_bit_orig_name {spi1/ele2_meta[24]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[24]/Q} .original_name {spi1/ele2_meta[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[25]} .original_name {{spi1/ele2_meta[25]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[25]} .single_bit_orig_name {spi1/ele2_meta[25]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[25]/Q} .original_name {spi1/ele2_meta[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[26]} .original_name {{spi1/ele2_meta[26]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[26]} .single_bit_orig_name {spi1/ele2_meta[26]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[26]/Q} .original_name {spi1/ele2_meta[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[27]} .original_name {{spi1/ele2_meta[27]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[27]} .single_bit_orig_name {spi1/ele2_meta[27]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[27]/Q} .original_name {spi1/ele2_meta[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[28]} .original_name {{spi1/ele2_meta[28]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[28]} .single_bit_orig_name {spi1/ele2_meta[28]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[28]/Q} .original_name {spi1/ele2_meta[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[29]} .original_name {{spi1/ele2_meta[29]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[29]} .single_bit_orig_name {spi1/ele2_meta[29]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[29]/Q} .original_name {spi1/ele2_meta[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[30]} .original_name {{spi1/ele2_meta[30]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[30]} .single_bit_orig_name {spi1/ele2_meta[30]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[30]/Q} .original_name {spi1/ele2_meta[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[31]} .original_name {{spi1/ele2_meta[31]}}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[31]} .single_bit_orig_name {spi1/ele2_meta[31]}
set_db -quiet {inst:aska_dig/spi1_ele2_meta_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_meta_reg[31]/Q} .original_name {spi1/ele2_meta[31]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[0]} .original_name {{spi1/ele2[0]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[0]} .single_bit_orig_name {spi1/ele2[0]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[0]/Q} .original_name {spi1/ele2[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[1]} .original_name {{spi1/ele2[1]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[1]} .single_bit_orig_name {spi1/ele2[1]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[1]/Q} .original_name {spi1/ele2[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[2]} .original_name {{spi1/ele2[2]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[2]} .single_bit_orig_name {spi1/ele2[2]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[2]/Q} .original_name {spi1/ele2[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[3]} .original_name {{spi1/ele2[3]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[3]} .single_bit_orig_name {spi1/ele2[3]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[3]/Q} .original_name {spi1/ele2[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[4]} .original_name {{spi1/ele2[4]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[4]} .single_bit_orig_name {spi1/ele2[4]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[4]/Q} .original_name {spi1/ele2[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[5]} .original_name {{spi1/ele2[5]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[5]} .single_bit_orig_name {spi1/ele2[5]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[5]/Q} .original_name {spi1/ele2[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[6]} .original_name {{spi1/ele2[6]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[6]} .single_bit_orig_name {spi1/ele2[6]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[6]/Q} .original_name {spi1/ele2[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[7]} .original_name {{spi1/ele2[7]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[7]} .single_bit_orig_name {spi1/ele2[7]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[7]/Q} .original_name {spi1/ele2[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[8]} .original_name {{spi1/ele2[8]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[8]} .single_bit_orig_name {spi1/ele2[8]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[8]/Q} .original_name {spi1/ele2[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[9]} .original_name {{spi1/ele2[9]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[9]} .single_bit_orig_name {spi1/ele2[9]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[9]/Q} .original_name {spi1/ele2[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[10]} .original_name {{spi1/ele2[10]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[10]} .single_bit_orig_name {spi1/ele2[10]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[10]/Q} .original_name {spi1/ele2[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[11]} .original_name {{spi1/ele2[11]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[11]} .single_bit_orig_name {spi1/ele2[11]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[11]/Q} .original_name {spi1/ele2[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[12]} .original_name {{spi1/ele2[12]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[12]} .single_bit_orig_name {spi1/ele2[12]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[12]/Q} .original_name {spi1/ele2[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[13]} .original_name {{spi1/ele2[13]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[13]} .single_bit_orig_name {spi1/ele2[13]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[13]/Q} .original_name {spi1/ele2[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[14]} .original_name {{spi1/ele2[14]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[14]} .single_bit_orig_name {spi1/ele2[14]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[14]/Q} .original_name {spi1/ele2[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[15]} .original_name {{spi1/ele2[15]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[15]} .single_bit_orig_name {spi1/ele2[15]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[15]/Q} .original_name {spi1/ele2[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[16]} .original_name {{spi1/ele2[16]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[16]} .single_bit_orig_name {spi1/ele2[16]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[16]/Q} .original_name {spi1/ele2[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[17]} .original_name {{spi1/ele2[17]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[17]} .single_bit_orig_name {spi1/ele2[17]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[17]/Q} .original_name {spi1/ele2[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[18]} .original_name {{spi1/ele2[18]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[18]} .single_bit_orig_name {spi1/ele2[18]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[18]/Q} .original_name {spi1/ele2[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[19]} .original_name {{spi1/ele2[19]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[19]} .single_bit_orig_name {spi1/ele2[19]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[19]/Q} .original_name {spi1/ele2[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[20]} .original_name {{spi1/ele2[20]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[20]} .single_bit_orig_name {spi1/ele2[20]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[20]/Q} .original_name {spi1/ele2[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[21]} .original_name {{spi1/ele2[21]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[21]} .single_bit_orig_name {spi1/ele2[21]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[21]/Q} .original_name {spi1/ele2[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[22]} .original_name {{spi1/ele2[22]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[22]} .single_bit_orig_name {spi1/ele2[22]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[22]/Q} .original_name {spi1/ele2[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[23]} .original_name {{spi1/ele2[23]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[23]} .single_bit_orig_name {spi1/ele2[23]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[23]/Q} .original_name {spi1/ele2[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[24]} .original_name {{spi1/ele2[24]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[24]} .single_bit_orig_name {spi1/ele2[24]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[24]/Q} .original_name {spi1/ele2[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[25]} .original_name {{spi1/ele2[25]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[25]} .single_bit_orig_name {spi1/ele2[25]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[25]/Q} .original_name {spi1/ele2[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[26]} .original_name {{spi1/ele2[26]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[26]} .single_bit_orig_name {spi1/ele2[26]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[26]/Q} .original_name {spi1/ele2[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[27]} .original_name {{spi1/ele2[27]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[27]} .single_bit_orig_name {spi1/ele2[27]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[27]/Q} .original_name {spi1/ele2[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[28]} .original_name {{spi1/ele2[28]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[28]} .single_bit_orig_name {spi1/ele2[28]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[28]/Q} .original_name {spi1/ele2[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[29]} .original_name {{spi1/ele2[29]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[29]} .single_bit_orig_name {spi1/ele2[29]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[29]/Q} .original_name {spi1/ele2[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[30]} .original_name {{spi1/ele2[30]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[30]} .single_bit_orig_name {spi1/ele2[30]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[30]/Q} .original_name {spi1/ele2[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[31]} .original_name {{spi1/ele2[31]}}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_reg[31]} .single_bit_orig_name {spi1/ele2[31]}
set_db -quiet {inst:aska_dig/spi1_ele2_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_reg[31]/Q} .original_name {spi1/ele2[31]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[0]} .original_name {{spi1/Rx_count[0]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[0]} .single_bit_orig_name {spi1/Rx_count[0]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[0]/Q} .original_name {spi1/Rx_count[0]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[1]} .original_name {{spi1/Rx_count[1]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[1]} .single_bit_orig_name {spi1/Rx_count[1]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[1]/Q} .original_name {spi1/Rx_count[1]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[2]} .original_name {{spi1/Rx_count[2]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[2]} .single_bit_orig_name {spi1/Rx_count[2]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[2]/Q} .original_name {spi1/Rx_count[2]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[3]} .original_name {{spi1/Rx_count[3]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[3]} .single_bit_orig_name {spi1/Rx_count[3]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[3]/Q} .original_name {spi1/Rx_count[3]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[4]} .original_name {{spi1/Rx_count[4]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[4]} .single_bit_orig_name {spi1/Rx_count[4]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[4]/Q} .original_name {spi1/Rx_count[4]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[5]} .original_name {{spi1/Rx_count[5]}}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[5]} .single_bit_orig_name {spi1/Rx_count[5]}
set_db -quiet {inst:aska_dig/spi1_Rx_count_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_count_reg[5]/Q} .original_name {spi1/Rx_count[5]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[0]} .original_name {{spi1/Rx_data_temp[0]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[0]} .single_bit_orig_name {spi1/Rx_data_temp[0]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[0]/Q} .original_name {spi1/Rx_data_temp[0]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[1]} .original_name {{spi1/Rx_data_temp[1]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[1]} .single_bit_orig_name {spi1/Rx_data_temp[1]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[1]/Q} .original_name {spi1/Rx_data_temp[1]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[2]} .original_name {{spi1/Rx_data_temp[2]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[2]} .single_bit_orig_name {spi1/Rx_data_temp[2]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[2]/Q} .original_name {spi1/Rx_data_temp[2]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[3]} .original_name {{spi1/Rx_data_temp[3]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[3]} .single_bit_orig_name {spi1/Rx_data_temp[3]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[3]/Q} .original_name {spi1/Rx_data_temp[3]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[4]} .original_name {{spi1/Rx_data_temp[4]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[4]} .single_bit_orig_name {spi1/Rx_data_temp[4]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[4]/Q} .original_name {spi1/Rx_data_temp[4]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[5]} .original_name {{spi1/Rx_data_temp[5]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[5]} .single_bit_orig_name {spi1/Rx_data_temp[5]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[5]/Q} .original_name {spi1/Rx_data_temp[5]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[6]} .original_name {{spi1/Rx_data_temp[6]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[6]} .single_bit_orig_name {spi1/Rx_data_temp[6]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[6]/Q} .original_name {spi1/Rx_data_temp[6]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[7]} .original_name {{spi1/Rx_data_temp[7]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[7]} .single_bit_orig_name {spi1/Rx_data_temp[7]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[7]/Q} .original_name {spi1/Rx_data_temp[7]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[8]} .original_name {{spi1/Rx_data_temp[8]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[8]} .single_bit_orig_name {spi1/Rx_data_temp[8]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[8]/Q} .original_name {spi1/Rx_data_temp[8]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[9]} .original_name {{spi1/Rx_data_temp[9]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[9]} .single_bit_orig_name {spi1/Rx_data_temp[9]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[9]/Q} .original_name {spi1/Rx_data_temp[9]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[10]} .original_name {{spi1/Rx_data_temp[10]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[10]} .single_bit_orig_name {spi1/Rx_data_temp[10]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[10]/Q} .original_name {spi1/Rx_data_temp[10]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[11]} .original_name {{spi1/Rx_data_temp[11]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[11]} .single_bit_orig_name {spi1/Rx_data_temp[11]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[11]/Q} .original_name {spi1/Rx_data_temp[11]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[12]} .original_name {{spi1/Rx_data_temp[12]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[12]} .single_bit_orig_name {spi1/Rx_data_temp[12]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[12]/Q} .original_name {spi1/Rx_data_temp[12]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[13]} .original_name {{spi1/Rx_data_temp[13]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[13]} .single_bit_orig_name {spi1/Rx_data_temp[13]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[13]/Q} .original_name {spi1/Rx_data_temp[13]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[14]} .original_name {{spi1/Rx_data_temp[14]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[14]} .single_bit_orig_name {spi1/Rx_data_temp[14]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[14]/Q} .original_name {spi1/Rx_data_temp[14]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[15]} .original_name {{spi1/Rx_data_temp[15]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[15]} .single_bit_orig_name {spi1/Rx_data_temp[15]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[15]/Q} .original_name {spi1/Rx_data_temp[15]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[16]} .original_name {{spi1/Rx_data_temp[16]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[16]} .single_bit_orig_name {spi1/Rx_data_temp[16]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[16]/Q} .original_name {spi1/Rx_data_temp[16]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[17]} .original_name {{spi1/Rx_data_temp[17]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[17]} .single_bit_orig_name {spi1/Rx_data_temp[17]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[17]/Q} .original_name {spi1/Rx_data_temp[17]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[18]} .original_name {{spi1/Rx_data_temp[18]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[18]} .single_bit_orig_name {spi1/Rx_data_temp[18]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[18]/Q} .original_name {spi1/Rx_data_temp[18]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[19]} .original_name {{spi1/Rx_data_temp[19]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[19]} .single_bit_orig_name {spi1/Rx_data_temp[19]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[19]/Q} .original_name {spi1/Rx_data_temp[19]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[20]} .original_name {{spi1/Rx_data_temp[20]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[20]} .single_bit_orig_name {spi1/Rx_data_temp[20]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[20]/Q} .original_name {spi1/Rx_data_temp[20]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[21]} .original_name {{spi1/Rx_data_temp[21]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[21]} .single_bit_orig_name {spi1/Rx_data_temp[21]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[21]/Q} .original_name {spi1/Rx_data_temp[21]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[22]} .original_name {{spi1/Rx_data_temp[22]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[22]} .single_bit_orig_name {spi1/Rx_data_temp[22]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[22]/Q} .original_name {spi1/Rx_data_temp[22]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[23]} .original_name {{spi1/Rx_data_temp[23]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[23]} .single_bit_orig_name {spi1/Rx_data_temp[23]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[23]/Q} .original_name {spi1/Rx_data_temp[23]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[24]} .original_name {{spi1/Rx_data_temp[24]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[24]} .single_bit_orig_name {spi1/Rx_data_temp[24]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[24]/Q} .original_name {spi1/Rx_data_temp[24]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[25]} .original_name {{spi1/Rx_data_temp[25]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[25]} .single_bit_orig_name {spi1/Rx_data_temp[25]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[25]/Q} .original_name {spi1/Rx_data_temp[25]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[26]} .original_name {{spi1/Rx_data_temp[26]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[26]} .single_bit_orig_name {spi1/Rx_data_temp[26]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[26]/Q} .original_name {spi1/Rx_data_temp[26]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[27]} .original_name {{spi1/Rx_data_temp[27]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[27]} .single_bit_orig_name {spi1/Rx_data_temp[27]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[27]/Q} .original_name {spi1/Rx_data_temp[27]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[28]} .original_name {{spi1/Rx_data_temp[28]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[28]} .single_bit_orig_name {spi1/Rx_data_temp[28]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[28]/Q} .original_name {spi1/Rx_data_temp[28]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[29]} .original_name {{spi1/Rx_data_temp[29]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[29]} .single_bit_orig_name {spi1/Rx_data_temp[29]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[29]/Q} .original_name {spi1/Rx_data_temp[29]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[30]} .original_name {{spi1/Rx_data_temp[30]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[30]} .single_bit_orig_name {spi1/Rx_data_temp[30]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[30]/Q} .original_name {spi1/Rx_data_temp[30]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[31]} .original_name {{spi1/Rx_data_temp[31]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[31]} .single_bit_orig_name {spi1/Rx_data_temp[31]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[31]/Q} .original_name {spi1/Rx_data_temp[31]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[32]} .original_name {{spi1/Rx_data_temp[32]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[32]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[32]} .single_bit_orig_name {spi1/Rx_data_temp[32]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[32]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[32]/Q} .original_name {spi1/Rx_data_temp[32]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[33]} .original_name {{spi1/Rx_data_temp[33]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[33]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[33]} .single_bit_orig_name {spi1/Rx_data_temp[33]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[33]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[33]/Q} .original_name {spi1/Rx_data_temp[33]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[34]} .original_name {{spi1/Rx_data_temp[34]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[34]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[34]} .single_bit_orig_name {spi1/Rx_data_temp[34]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[34]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[34]/Q} .original_name {spi1/Rx_data_temp[34]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[35]} .original_name {{spi1/Rx_data_temp[35]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[35]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[35]} .single_bit_orig_name {spi1/Rx_data_temp[35]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[35]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[35]/Q} .original_name {spi1/Rx_data_temp[35]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[36]} .original_name {{spi1/Rx_data_temp[36]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[36]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[36]} .single_bit_orig_name {spi1/Rx_data_temp[36]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[36]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[36]/Q} .original_name {spi1/Rx_data_temp[36]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[37]} .original_name {{spi1/Rx_data_temp[37]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[37]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[37]} .single_bit_orig_name {spi1/Rx_data_temp[37]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[37]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[37]/Q} .original_name {spi1/Rx_data_temp[37]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[38]} .original_name {{spi1/Rx_data_temp[38]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[38]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[38]} .single_bit_orig_name {spi1/Rx_data_temp[38]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[38]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[38]/Q} .original_name {spi1/Rx_data_temp[38]/q}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[39]} .original_name {{spi1/Rx_data_temp[39]}}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[39]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[39]} .single_bit_orig_name {spi1/Rx_data_temp[39]}
set_db -quiet {inst:aska_dig/spi1_Rx_data_temp_reg[39]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_Rx_data_temp_reg[39]/Q} .original_name {spi1/Rx_data_temp[39]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[0]} .original_name {{spi1/conf0_asyn[0]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[0]} .single_bit_orig_name {spi1/conf0_asyn[0]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[0]/Q} .original_name {spi1/conf0_asyn[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[1]} .original_name {{spi1/conf0_asyn[1]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[1]} .single_bit_orig_name {spi1/conf0_asyn[1]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[1]/Q} .original_name {spi1/conf0_asyn[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[2]} .original_name {{spi1/conf0_asyn[2]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[2]} .single_bit_orig_name {spi1/conf0_asyn[2]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[2]/Q} .original_name {spi1/conf0_asyn[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[3]} .original_name {{spi1/conf0_asyn[3]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[3]} .single_bit_orig_name {spi1/conf0_asyn[3]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[3]/Q} .original_name {spi1/conf0_asyn[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[4]} .original_name {{spi1/conf0_asyn[4]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[4]} .single_bit_orig_name {spi1/conf0_asyn[4]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[4]/Q} .original_name {spi1/conf0_asyn[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[5]} .original_name {{spi1/conf0_asyn[5]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[5]} .single_bit_orig_name {spi1/conf0_asyn[5]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[5]/Q} .original_name {spi1/conf0_asyn[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[6]} .original_name {{spi1/conf0_asyn[6]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[6]} .single_bit_orig_name {spi1/conf0_asyn[6]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[6]/Q} .original_name {spi1/conf0_asyn[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[7]} .original_name {{spi1/conf0_asyn[7]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[7]} .single_bit_orig_name {spi1/conf0_asyn[7]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[7]/Q} .original_name {spi1/conf0_asyn[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[8]} .original_name {{spi1/conf0_asyn[8]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[8]} .single_bit_orig_name {spi1/conf0_asyn[8]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[8]/Q} .original_name {spi1/conf0_asyn[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[9]} .original_name {{spi1/conf0_asyn[9]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[9]} .single_bit_orig_name {spi1/conf0_asyn[9]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[9]/Q} .original_name {spi1/conf0_asyn[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[10]} .original_name {{spi1/conf0_asyn[10]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[10]} .single_bit_orig_name {spi1/conf0_asyn[10]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[10]/Q} .original_name {spi1/conf0_asyn[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[11]} .original_name {{spi1/conf0_asyn[11]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[11]} .single_bit_orig_name {spi1/conf0_asyn[11]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[11]/Q} .original_name {spi1/conf0_asyn[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[12]} .original_name {{spi1/conf0_asyn[12]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[12]} .single_bit_orig_name {spi1/conf0_asyn[12]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[12]/Q} .original_name {spi1/conf0_asyn[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[13]} .original_name {{spi1/conf0_asyn[13]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[13]} .single_bit_orig_name {spi1/conf0_asyn[13]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[13]/Q} .original_name {spi1/conf0_asyn[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[14]} .original_name {{spi1/conf0_asyn[14]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[14]} .single_bit_orig_name {spi1/conf0_asyn[14]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[14]/Q} .original_name {spi1/conf0_asyn[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[15]} .original_name {{spi1/conf0_asyn[15]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[15]} .single_bit_orig_name {spi1/conf0_asyn[15]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[15]/Q} .original_name {spi1/conf0_asyn[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[16]} .original_name {{spi1/conf0_asyn[16]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[16]} .single_bit_orig_name {spi1/conf0_asyn[16]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[16]/Q} .original_name {spi1/conf0_asyn[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[17]} .original_name {{spi1/conf0_asyn[17]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[17]} .single_bit_orig_name {spi1/conf0_asyn[17]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[17]/Q} .original_name {spi1/conf0_asyn[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[18]} .original_name {{spi1/conf0_asyn[18]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[18]} .single_bit_orig_name {spi1/conf0_asyn[18]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[18]/Q} .original_name {spi1/conf0_asyn[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[19]} .original_name {{spi1/conf0_asyn[19]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[19]} .single_bit_orig_name {spi1/conf0_asyn[19]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[19]/Q} .original_name {spi1/conf0_asyn[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[20]} .original_name {{spi1/conf0_asyn[20]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[20]} .single_bit_orig_name {spi1/conf0_asyn[20]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[20]/Q} .original_name {spi1/conf0_asyn[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[21]} .original_name {{spi1/conf0_asyn[21]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[21]} .single_bit_orig_name {spi1/conf0_asyn[21]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[21]/Q} .original_name {spi1/conf0_asyn[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[22]} .original_name {{spi1/conf0_asyn[22]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[22]} .single_bit_orig_name {spi1/conf0_asyn[22]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[22]/Q} .original_name {spi1/conf0_asyn[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[23]} .original_name {{spi1/conf0_asyn[23]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[23]} .single_bit_orig_name {spi1/conf0_asyn[23]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[23]/Q} .original_name {spi1/conf0_asyn[23]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[24]} .original_name {{spi1/conf0_asyn[24]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[24]} .single_bit_orig_name {spi1/conf0_asyn[24]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[24]/Q} .original_name {spi1/conf0_asyn[24]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[25]} .original_name {{spi1/conf0_asyn[25]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[25]} .single_bit_orig_name {spi1/conf0_asyn[25]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[25]/Q} .original_name {spi1/conf0_asyn[25]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[26]} .original_name {{spi1/conf0_asyn[26]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[26]} .single_bit_orig_name {spi1/conf0_asyn[26]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[26]/Q} .original_name {spi1/conf0_asyn[26]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[27]} .original_name {{spi1/conf0_asyn[27]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[27]} .single_bit_orig_name {spi1/conf0_asyn[27]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[27]/Q} .original_name {spi1/conf0_asyn[27]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[28]} .original_name {{spi1/conf0_asyn[28]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[28]} .single_bit_orig_name {spi1/conf0_asyn[28]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[28]/Q} .original_name {spi1/conf0_asyn[28]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[29]} .original_name {{spi1/conf0_asyn[29]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[29]} .single_bit_orig_name {spi1/conf0_asyn[29]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[29]/Q} .original_name {spi1/conf0_asyn[29]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[30]} .original_name {{spi1/conf0_asyn[30]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[30]} .single_bit_orig_name {spi1/conf0_asyn[30]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[30]/Q} .original_name {spi1/conf0_asyn[30]/q}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[31]} .original_name {{spi1/conf0_asyn[31]}}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[31]} .single_bit_orig_name {spi1/conf0_asyn[31]}
set_db -quiet {inst:aska_dig/spi1_conf0_asyn_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf0_asyn_reg[31]/Q} .original_name {spi1/conf0_asyn[31]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[0]} .original_name {{spi1/conf1_asyn[0]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[0]} .single_bit_orig_name {spi1/conf1_asyn[0]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[0]/Q} .original_name {spi1/conf1_asyn[0]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[1]} .original_name {{spi1/conf1_asyn[1]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[1]} .single_bit_orig_name {spi1/conf1_asyn[1]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[1]/Q} .original_name {spi1/conf1_asyn[1]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[2]} .original_name {{spi1/conf1_asyn[2]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[2]} .single_bit_orig_name {spi1/conf1_asyn[2]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[2]/Q} .original_name {spi1/conf1_asyn[2]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[3]} .original_name {{spi1/conf1_asyn[3]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[3]} .single_bit_orig_name {spi1/conf1_asyn[3]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[3]/Q} .original_name {spi1/conf1_asyn[3]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[4]} .original_name {{spi1/conf1_asyn[4]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[4]} .single_bit_orig_name {spi1/conf1_asyn[4]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[4]/Q} .original_name {spi1/conf1_asyn[4]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[5]} .original_name {{spi1/conf1_asyn[5]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[5]} .single_bit_orig_name {spi1/conf1_asyn[5]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[5]/Q} .original_name {spi1/conf1_asyn[5]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[6]} .original_name {{spi1/conf1_asyn[6]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[6]} .single_bit_orig_name {spi1/conf1_asyn[6]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[6]/Q} .original_name {spi1/conf1_asyn[6]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[7]} .original_name {{spi1/conf1_asyn[7]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[7]} .single_bit_orig_name {spi1/conf1_asyn[7]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[7]/Q} .original_name {spi1/conf1_asyn[7]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[8]} .original_name {{spi1/conf1_asyn[8]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[8]} .single_bit_orig_name {spi1/conf1_asyn[8]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[8]/Q} .original_name {spi1/conf1_asyn[8]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[9]} .original_name {{spi1/conf1_asyn[9]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[9]} .single_bit_orig_name {spi1/conf1_asyn[9]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[9]/Q} .original_name {spi1/conf1_asyn[9]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[10]} .original_name {{spi1/conf1_asyn[10]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[10]} .single_bit_orig_name {spi1/conf1_asyn[10]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[10]/Q} .original_name {spi1/conf1_asyn[10]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[11]} .original_name {{spi1/conf1_asyn[11]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[11]} .single_bit_orig_name {spi1/conf1_asyn[11]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[11]/Q} .original_name {spi1/conf1_asyn[11]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[12]} .original_name {{spi1/conf1_asyn[12]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[12]} .single_bit_orig_name {spi1/conf1_asyn[12]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[12]/Q} .original_name {spi1/conf1_asyn[12]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[13]} .original_name {{spi1/conf1_asyn[13]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[13]} .single_bit_orig_name {spi1/conf1_asyn[13]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[13]/Q} .original_name {spi1/conf1_asyn[13]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[14]} .original_name {{spi1/conf1_asyn[14]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[14]} .single_bit_orig_name {spi1/conf1_asyn[14]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[14]/Q} .original_name {spi1/conf1_asyn[14]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[15]} .original_name {{spi1/conf1_asyn[15]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[15]} .single_bit_orig_name {spi1/conf1_asyn[15]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[15]/Q} .original_name {spi1/conf1_asyn[15]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[16]} .original_name {{spi1/conf1_asyn[16]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[16]} .single_bit_orig_name {spi1/conf1_asyn[16]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[16]/Q} .original_name {spi1/conf1_asyn[16]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[17]} .original_name {{spi1/conf1_asyn[17]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[17]} .single_bit_orig_name {spi1/conf1_asyn[17]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[17]/Q} .original_name {spi1/conf1_asyn[17]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[18]} .original_name {{spi1/conf1_asyn[18]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[18]} .single_bit_orig_name {spi1/conf1_asyn[18]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[18]/Q} .original_name {spi1/conf1_asyn[18]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[19]} .original_name {{spi1/conf1_asyn[19]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[19]} .single_bit_orig_name {spi1/conf1_asyn[19]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[19]/Q} .original_name {spi1/conf1_asyn[19]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[20]} .original_name {{spi1/conf1_asyn[20]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[20]} .single_bit_orig_name {spi1/conf1_asyn[20]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[20]/Q} .original_name {spi1/conf1_asyn[20]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[21]} .original_name {{spi1/conf1_asyn[21]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[21]} .single_bit_orig_name {spi1/conf1_asyn[21]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[21]/Q} .original_name {spi1/conf1_asyn[21]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[22]} .original_name {{spi1/conf1_asyn[22]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[22]} .single_bit_orig_name {spi1/conf1_asyn[22]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[22]/Q} .original_name {spi1/conf1_asyn[22]/q}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[23]} .original_name {{spi1/conf1_asyn[23]}}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[23]} .single_bit_orig_name {spi1/conf1_asyn[23]}
set_db -quiet {inst:aska_dig/spi1_conf1_asyn_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_conf1_asyn_reg[23]/Q} .original_name {spi1/conf1_asyn[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[0]} .original_name {{spi1/ele1_asyn[0]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[0]} .single_bit_orig_name {spi1/ele1_asyn[0]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[0]/Q} .original_name {spi1/ele1_asyn[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[1]} .original_name {{spi1/ele1_asyn[1]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[1]} .single_bit_orig_name {spi1/ele1_asyn[1]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[1]/Q} .original_name {spi1/ele1_asyn[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[2]} .original_name {{spi1/ele1_asyn[2]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[2]} .single_bit_orig_name {spi1/ele1_asyn[2]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[2]/Q} .original_name {spi1/ele1_asyn[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[3]} .original_name {{spi1/ele1_asyn[3]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[3]} .single_bit_orig_name {spi1/ele1_asyn[3]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[3]/Q} .original_name {spi1/ele1_asyn[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[4]} .original_name {{spi1/ele1_asyn[4]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[4]} .single_bit_orig_name {spi1/ele1_asyn[4]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[4]/Q} .original_name {spi1/ele1_asyn[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[5]} .original_name {{spi1/ele1_asyn[5]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[5]} .single_bit_orig_name {spi1/ele1_asyn[5]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[5]/Q} .original_name {spi1/ele1_asyn[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[6]} .original_name {{spi1/ele1_asyn[6]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[6]} .single_bit_orig_name {spi1/ele1_asyn[6]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[6]/Q} .original_name {spi1/ele1_asyn[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[7]} .original_name {{spi1/ele1_asyn[7]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[7]} .single_bit_orig_name {spi1/ele1_asyn[7]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[7]/Q} .original_name {spi1/ele1_asyn[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[8]} .original_name {{spi1/ele1_asyn[8]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[8]} .single_bit_orig_name {spi1/ele1_asyn[8]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[8]/Q} .original_name {spi1/ele1_asyn[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[9]} .original_name {{spi1/ele1_asyn[9]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[9]} .single_bit_orig_name {spi1/ele1_asyn[9]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[9]/Q} .original_name {spi1/ele1_asyn[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[10]} .original_name {{spi1/ele1_asyn[10]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[10]} .single_bit_orig_name {spi1/ele1_asyn[10]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[10]/Q} .original_name {spi1/ele1_asyn[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[11]} .original_name {{spi1/ele1_asyn[11]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[11]} .single_bit_orig_name {spi1/ele1_asyn[11]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[11]/Q} .original_name {spi1/ele1_asyn[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[12]} .original_name {{spi1/ele1_asyn[12]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[12]} .single_bit_orig_name {spi1/ele1_asyn[12]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[12]/Q} .original_name {spi1/ele1_asyn[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[13]} .original_name {{spi1/ele1_asyn[13]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[13]} .single_bit_orig_name {spi1/ele1_asyn[13]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[13]/Q} .original_name {spi1/ele1_asyn[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[14]} .original_name {{spi1/ele1_asyn[14]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[14]} .single_bit_orig_name {spi1/ele1_asyn[14]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[14]/Q} .original_name {spi1/ele1_asyn[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[15]} .original_name {{spi1/ele1_asyn[15]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[15]} .single_bit_orig_name {spi1/ele1_asyn[15]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[15]/Q} .original_name {spi1/ele1_asyn[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[16]} .original_name {{spi1/ele1_asyn[16]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[16]} .single_bit_orig_name {spi1/ele1_asyn[16]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[16]/Q} .original_name {spi1/ele1_asyn[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[17]} .original_name {{spi1/ele1_asyn[17]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[17]} .single_bit_orig_name {spi1/ele1_asyn[17]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[17]/Q} .original_name {spi1/ele1_asyn[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[18]} .original_name {{spi1/ele1_asyn[18]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[18]} .single_bit_orig_name {spi1/ele1_asyn[18]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[18]/Q} .original_name {spi1/ele1_asyn[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[19]} .original_name {{spi1/ele1_asyn[19]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[19]} .single_bit_orig_name {spi1/ele1_asyn[19]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[19]/Q} .original_name {spi1/ele1_asyn[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[20]} .original_name {{spi1/ele1_asyn[20]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[20]} .single_bit_orig_name {spi1/ele1_asyn[20]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[20]/Q} .original_name {spi1/ele1_asyn[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[21]} .original_name {{spi1/ele1_asyn[21]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[21]} .single_bit_orig_name {spi1/ele1_asyn[21]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[21]/Q} .original_name {spi1/ele1_asyn[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[22]} .original_name {{spi1/ele1_asyn[22]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[22]} .single_bit_orig_name {spi1/ele1_asyn[22]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[22]/Q} .original_name {spi1/ele1_asyn[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[23]} .original_name {{spi1/ele1_asyn[23]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[23]} .single_bit_orig_name {spi1/ele1_asyn[23]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[23]/Q} .original_name {spi1/ele1_asyn[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[24]} .original_name {{spi1/ele1_asyn[24]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[24]} .single_bit_orig_name {spi1/ele1_asyn[24]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[24]/Q} .original_name {spi1/ele1_asyn[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[25]} .original_name {{spi1/ele1_asyn[25]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[25]} .single_bit_orig_name {spi1/ele1_asyn[25]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[25]/Q} .original_name {spi1/ele1_asyn[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[26]} .original_name {{spi1/ele1_asyn[26]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[26]} .single_bit_orig_name {spi1/ele1_asyn[26]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[26]/Q} .original_name {spi1/ele1_asyn[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[27]} .original_name {{spi1/ele1_asyn[27]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[27]} .single_bit_orig_name {spi1/ele1_asyn[27]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[27]/Q} .original_name {spi1/ele1_asyn[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[28]} .original_name {{spi1/ele1_asyn[28]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[28]} .single_bit_orig_name {spi1/ele1_asyn[28]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[28]/Q} .original_name {spi1/ele1_asyn[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[29]} .original_name {{spi1/ele1_asyn[29]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[29]} .single_bit_orig_name {spi1/ele1_asyn[29]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[29]/Q} .original_name {spi1/ele1_asyn[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[30]} .original_name {{spi1/ele1_asyn[30]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[30]} .single_bit_orig_name {spi1/ele1_asyn[30]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[30]/Q} .original_name {spi1/ele1_asyn[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[31]} .original_name {{spi1/ele1_asyn[31]}}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[31]} .single_bit_orig_name {spi1/ele1_asyn[31]}
set_db -quiet {inst:aska_dig/spi1_ele1_asyn_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele1_asyn_reg[31]/Q} .original_name {spi1/ele1_asyn[31]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[0]} .original_name {{spi1/ele2_asyn[0]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[0]} .single_bit_orig_name {spi1/ele2_asyn[0]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[0]/Q} .original_name {spi1/ele2_asyn[0]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[1]} .original_name {{spi1/ele2_asyn[1]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[1]} .single_bit_orig_name {spi1/ele2_asyn[1]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[1]/Q} .original_name {spi1/ele2_asyn[1]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[2]} .original_name {{spi1/ele2_asyn[2]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[2]} .single_bit_orig_name {spi1/ele2_asyn[2]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[2]/Q} .original_name {spi1/ele2_asyn[2]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[3]} .original_name {{spi1/ele2_asyn[3]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[3]} .single_bit_orig_name {spi1/ele2_asyn[3]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[3]/Q} .original_name {spi1/ele2_asyn[3]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[4]} .original_name {{spi1/ele2_asyn[4]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[4]} .single_bit_orig_name {spi1/ele2_asyn[4]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[4]/Q} .original_name {spi1/ele2_asyn[4]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[5]} .original_name {{spi1/ele2_asyn[5]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[5]} .single_bit_orig_name {spi1/ele2_asyn[5]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[5]/Q} .original_name {spi1/ele2_asyn[5]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[6]} .original_name {{spi1/ele2_asyn[6]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[6]} .single_bit_orig_name {spi1/ele2_asyn[6]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[6]/Q} .original_name {spi1/ele2_asyn[6]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[7]} .original_name {{spi1/ele2_asyn[7]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[7]} .single_bit_orig_name {spi1/ele2_asyn[7]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[7]/Q} .original_name {spi1/ele2_asyn[7]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[8]} .original_name {{spi1/ele2_asyn[8]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[8]} .single_bit_orig_name {spi1/ele2_asyn[8]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[8]/Q} .original_name {spi1/ele2_asyn[8]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[9]} .original_name {{spi1/ele2_asyn[9]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[9]} .single_bit_orig_name {spi1/ele2_asyn[9]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[9]/Q} .original_name {spi1/ele2_asyn[9]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[10]} .original_name {{spi1/ele2_asyn[10]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[10]} .single_bit_orig_name {spi1/ele2_asyn[10]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[10]/Q} .original_name {spi1/ele2_asyn[10]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[11]} .original_name {{spi1/ele2_asyn[11]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[11]} .single_bit_orig_name {spi1/ele2_asyn[11]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[11]/Q} .original_name {spi1/ele2_asyn[11]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[12]} .original_name {{spi1/ele2_asyn[12]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[12]} .single_bit_orig_name {spi1/ele2_asyn[12]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[12]/Q} .original_name {spi1/ele2_asyn[12]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[13]} .original_name {{spi1/ele2_asyn[13]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[13]} .single_bit_orig_name {spi1/ele2_asyn[13]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[13]/Q} .original_name {spi1/ele2_asyn[13]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[14]} .original_name {{spi1/ele2_asyn[14]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[14]} .single_bit_orig_name {spi1/ele2_asyn[14]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[14]/Q} .original_name {spi1/ele2_asyn[14]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[15]} .original_name {{spi1/ele2_asyn[15]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[15]} .single_bit_orig_name {spi1/ele2_asyn[15]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[15]/Q} .original_name {spi1/ele2_asyn[15]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[16]} .original_name {{spi1/ele2_asyn[16]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[16]} .single_bit_orig_name {spi1/ele2_asyn[16]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[16]/Q} .original_name {spi1/ele2_asyn[16]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[17]} .original_name {{spi1/ele2_asyn[17]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[17]} .single_bit_orig_name {spi1/ele2_asyn[17]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[17]/Q} .original_name {spi1/ele2_asyn[17]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[18]} .original_name {{spi1/ele2_asyn[18]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[18]} .single_bit_orig_name {spi1/ele2_asyn[18]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[18]/Q} .original_name {spi1/ele2_asyn[18]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[19]} .original_name {{spi1/ele2_asyn[19]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[19]} .single_bit_orig_name {spi1/ele2_asyn[19]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[19]/Q} .original_name {spi1/ele2_asyn[19]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[20]} .original_name {{spi1/ele2_asyn[20]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[20]} .single_bit_orig_name {spi1/ele2_asyn[20]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[20]/Q} .original_name {spi1/ele2_asyn[20]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[21]} .original_name {{spi1/ele2_asyn[21]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[21]} .single_bit_orig_name {spi1/ele2_asyn[21]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[21]/Q} .original_name {spi1/ele2_asyn[21]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[22]} .original_name {{spi1/ele2_asyn[22]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[22]} .single_bit_orig_name {spi1/ele2_asyn[22]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[22]/Q} .original_name {spi1/ele2_asyn[22]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[23]} .original_name {{spi1/ele2_asyn[23]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[23]} .single_bit_orig_name {spi1/ele2_asyn[23]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[23]/Q} .original_name {spi1/ele2_asyn[23]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[24]} .original_name {{spi1/ele2_asyn[24]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[24]} .single_bit_orig_name {spi1/ele2_asyn[24]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[24]/Q} .original_name {spi1/ele2_asyn[24]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[25]} .original_name {{spi1/ele2_asyn[25]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[25]} .single_bit_orig_name {spi1/ele2_asyn[25]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[25]/Q} .original_name {spi1/ele2_asyn[25]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[26]} .original_name {{spi1/ele2_asyn[26]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[26]} .single_bit_orig_name {spi1/ele2_asyn[26]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[26]/Q} .original_name {spi1/ele2_asyn[26]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[27]} .original_name {{spi1/ele2_asyn[27]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[27]} .single_bit_orig_name {spi1/ele2_asyn[27]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[27]/Q} .original_name {spi1/ele2_asyn[27]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[28]} .original_name {{spi1/ele2_asyn[28]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[28]} .single_bit_orig_name {spi1/ele2_asyn[28]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[28]/Q} .original_name {spi1/ele2_asyn[28]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[29]} .original_name {{spi1/ele2_asyn[29]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[29]} .single_bit_orig_name {spi1/ele2_asyn[29]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[29]/Q} .original_name {spi1/ele2_asyn[29]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[30]} .original_name {{spi1/ele2_asyn[30]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[30]} .single_bit_orig_name {spi1/ele2_asyn[30]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[30]/Q} .original_name {spi1/ele2_asyn[30]/q}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[31]} .original_name {{spi1/ele2_asyn[31]}}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[31]} .single_bit_orig_name {spi1/ele2_asyn[31]}
set_db -quiet {inst:aska_dig/spi1_ele2_asyn_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:aska_dig/spi1_ele2_asyn_reg[31]/Q} .original_name {spi1/ele2_asyn[31]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 21.18-s082_1
## flowkit v21.12-s019_1
## Written on 12:13:22 15-Jul 2024
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid be3d0d57-3502-47d0-b8a0-b6c0a4c7426f}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

