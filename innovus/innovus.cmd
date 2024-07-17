#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Jul 15 10:42:26 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.18-s099_1 (64bit) 07/18/2023 13:03 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.18-s099_1 NR230707-1955/21_18-UB (database version 18.20.605) {superthreading v2.17}
#@(#)CDS: AAE 21.18-s017 (64bit) 07/18/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.18-s022_1 () Jul 11 2023 23:10:24 ( )
#@(#)CDS: SYNTECH 21.18-s010_1 () Jul  5 2023 06:32:03 ( )
#@(#)CDS: CPE v21.18-s053
#@(#)CDS: IQuantus/TQuantus 21.1.1-s966 (64bit) Wed Mar 8 10:22:20 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
setOaxMode -compressLevel 0
setOaxMode -allowBitConnection true
setOaxMode -allowTechUpdate false
setOaxMode -updateMode true
setDesignMode -process 180
setViaGenMode -symmetrical_via_only true
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
setMultiCpuUsage -localCpu 4
set init_gnd_net gnd3i
set init_verilog ../genus/genus_output/dig_aska_synth.v
set init_mmmc_file xh018_ji3v.view
set init_oa_ref_lib {D_CELLS_JI3V ASKA_DIG}
set init_pwr_net vdd3i
init_design
clearGlobalNets
globalNetConnect gnd3i -type pgpin -pin gnd3i -instanceBasename * -hierarchicalInstance {}
globalNetConnect vdd3i -type pgpin -pin vdd3i -instanceBasename * -hierarchicalInstance {}
saveDesign aska_dig_loaded
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core_ji3v -r 0.979068934984 0.5 20.0 20 20 20
uiSetTool select
getIoFlowFlag
fit
saveDesign aska_dig_loaded_fp
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer METTPL -stacked_via_bottom_layer MET1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd3i vdd3i} -type core_rings -follow core -layer {top MET1 bottom MET1 left MET2 right MET2} -width {top 8 bottom 8 left 8 right 8} -spacing {top 0.23 bottom 0.23 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
zoomBox -0.33800 -43.36700 333.71900 357.21600
zoomBox 0.87300 12.58600 284.82200 353.08200
zoomBox 1.90300 59.54000 243.26000 348.96200
zoomBox 3.13900 98.67900 208.29200 344.68800
zoomBox 4.19000 131.81600 178.57000 340.92300
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report aska_dig.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer METTPL -stacked_via_bottom_layer MET1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd3i vdd3i} -layer MET2 -direction vertical -width 4 -spacing 0.28 -number_of_sets 2 -start_from left -start_offset 20 -stop_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METTPL -padcore_ring_bottom_layer_limit MET1 -block_ring_top_layer_limit METTPL -block_ring_bottom_layer_limit MET1 -use_wire_group 0 -snap_wire_center_to_grid None
undo
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer METTPL -stacked_via_bottom_layer MET1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd3i vdd3i} -layer MET2 -direction vertical -width 8 -spacing 0.28 -number_of_sets 2 -start_from left -start_offset 80 -stop_offset 80 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METTPL -padcore_ring_bottom_layer_limit MET1 -block_ring_top_layer_limit METTPL -block_ring_bottom_layer_limit MET1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { stripe }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { MET1(1) METTPL(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { MET1(1) METTPL(6) } -nets { gnd3i vdd3i } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { MET1(1) METTPL(6) }
zoomBox 14.14700 -31.93900 255.50400 257.48300
zoomBox 28.91300 -18.03000 203.29500 191.07900
zoomBox 34.64300 -12.78500 182.86800 164.95900
zoomBox 43.65300 -4.59400 150.74600 123.82600
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report aska_dig.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomBox 36.87800 -12.55200 162.87000 138.53100
zoomBox 19.53100 -32.92800 193.91500 176.18400
fit
saveDesign aska_dig_loaded_fp_pw
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 2 -pin {clk reset_l SPI_CS SPI_Clk SPI_MOSI {IC_addr[0]} {IC_addr[1]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 4 -pin {clk reset_l SPI_CS SPI_Clk SPI_MOSI {IC_addr[0]} {IC_addr[1]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 4.48 -pin {clk reset_l SPI_CS SPI_Clk SPI_MOSI {IC_addr[0]} {IC_addr[1]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 8 -pin {clk reset_l SPI_CS SPI_Clk SPI_MOSI {IC_addr[0]} {IC_addr[1]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 8.4 -pin {clk reset_l SPI_CS SPI_Clk SPI_MOSI {IC_addr[0]} {IC_addr[1]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 2 -pin {{up_switches[0]} {up_switches[1]} {up_switches[2]} {up_switches[3]} {up_switches[4]} {up_switches[5]} {up_switches[6]} {up_switches[7]} {up_switches[8]} {up_switches[9]} {up_switches[10]} {up_switches[11]} {up_switches[12]} {up_switches[13]} {up_switches[14]} {up_switches[15]} {up_switches[16]} {up_switches[17]} {up_switches[18]} {up_switches[19]} {up_switches[20]} {up_switches[21]} {up_switches[22]} {up_switches[23]} {up_switches[24]} {up_switches[25]} {up_switches[26]} {up_switches[27]} {up_switches[28]} {up_switches[29]} {up_switches[30]} {up_switches[31]} {down_switches[0]} {down_switches[1]} {down_switches[2]} {down_switches[3]} {down_switches[4]} {down_switches[5]} {down_switches[6]} {down_switches[7]} {down_switches[8]} {down_switches[9]} {down_switches[10]} {down_switches[11]} {down_switches[12]} {down_switches[13]} {down_switches[14]} {down_switches[15]} {down_switches[16]} {down_switches[17]} {down_switches[18]} {down_switches[19]} {down_switches[20]} {down_switches[21]} {down_switches[22]} {down_switches[23]} {down_switches[24]} {down_switches[25]} {down_switches[26]} {down_switches[27]} {down_switches[28]} {down_switches[29]} {down_switches[30]} {down_switches[31]} {DAC[0]} {DAC[1]} {DAC[2]} {DAC[3]} {DAC[4]} {DAC[5]} pulse_active enable}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 4 -pin {{up_switches[0]} {up_switches[1]} {up_switches[2]} {up_switches[3]} {up_switches[4]} {up_switches[5]} {up_switches[6]} {up_switches[7]} {up_switches[8]} {up_switches[9]} {up_switches[10]} {up_switches[11]} {up_switches[12]} {up_switches[13]} {up_switches[14]} {up_switches[15]} {up_switches[16]} {up_switches[17]} {up_switches[18]} {up_switches[19]} {up_switches[20]} {up_switches[21]} {up_switches[22]} {up_switches[23]} {up_switches[24]} {up_switches[25]} {up_switches[26]} {up_switches[27]} {up_switches[28]} {up_switches[29]} {up_switches[30]} {up_switches[31]} {down_switches[0]} {down_switches[1]} {down_switches[2]} {down_switches[3]} {down_switches[4]} {down_switches[5]} {down_switches[6]} {down_switches[7]} {down_switches[8]} {down_switches[9]} {down_switches[10]} {down_switches[11]} {down_switches[12]} {down_switches[13]} {down_switches[14]} {down_switches[15]} {down_switches[16]} {down_switches[17]} {down_switches[18]} {down_switches[19]} {down_switches[20]} {down_switches[21]} {down_switches[22]} {down_switches[23]} {down_switches[24]} {down_switches[25]} {down_switches[26]} {down_switches[27]} {down_switches[28]} {down_switches[29]} {down_switches[30]} {down_switches[31]} {DAC[0]} {DAC[1]} {DAC[2]} {DAC[3]} {DAC[4]} {DAC[5]} pulse_active enable}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType center -spacing 0.56 -pin porborn
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.28 -pinDepth 0.725 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType center -spacing 0.56 -pin porborn
setPinAssignMode -pinEditInBatch false
zoomBox 40.33200 -4.03800 374.38900 396.54500
zoomBox 131.41000 88.75500 372.76700 378.17700
zoomBox 196.95700 155.54000 371.33800 364.64800
zoomBox 222.14700 181.43600 370.37100 359.17800
zoomBox 243.55800 203.47900 369.54900 354.56100
saveDesign aska_dig_loaded_fp_pw_pn
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix aska_dig_prePlace -outDir timingReports
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule virtuosoDefaultSetup
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setTieHiLoMode -reset
setTieHiLoMode -cell {  LOGIC1JI3V LOGIC0JI3V } -maxFanOut 10 -honorDontTouch false -createHierPort false
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setTieHiLoMode -reset
setTieHiLoMode -cell {  LOGIC1JI3V LOGIC0JI3V } -maxFanOut 10 -honorDontTouch false -createHierPort false
setRouteMode -earlyGlobalMaxRouteLayer 4
getPlaceMode -place_hierarchical_flow -quiet
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -place_global_place_io_pins -quiet
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -quiet -place_global_exp_enable_3d
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
getPlaceMode -place_design_floorplan_mode -quiet
getPlaceMode -place_global_timing_effort -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -quiet -NMPsuppressInfo
getPlaceMode -quiet -place_global_exp_wns_focus_v2
getPlaceMode -quiet -place_incr_exp_isolation_flow
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_buffer_chain
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_pipeline
getPlaceMode -place_global_exp_balance_buffer_chain -quiet
getPlaceMode -place_global_exp_balance_pipeline -quiet
getPlaceMode -tdgpMemFlow -quiet
getPlaceMode -user -resetCombineRFLevel
getPlaceMode -quiet -resetCombineRFLevel
setPlaceMode -resetCombineRFLevel 1000
setvar spgSpeedupBuildVSM 1
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -reset -ignoreScan
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
colorizeGeometry
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode true
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode false
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.2252 -from {0x20e 0x211} -to 0x212 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.2252 -from {0x219 0x21c} -to 0x21d -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.2252 -from 0x223 -to 0x228
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.2252 -from 0x233 -to 0x238
setPathGroupOptions reg2reg_tmp.2252 -effortLevel high
reset_path_group -name in2reg_tmp.2252
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.2252
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -quiet -place_global_exp_inverter_rewiring
getPlaceMode -ignoreUnproperPowerInit -quiet
getPlaceMode -quiet -expSkipGP
setDelayCalMode -engine feDc
psp::embedded_egr_init_
psp::embedded_egr_term_
scanReorder
setDelayCalMode -engine aae
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
reset_path_group -name reg2reg_tmp.2252
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2out_tmp.2252
set_global _is_ipo_interactive_path_groups 0
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.2252 -from {0x244 0x247} -to 0x248 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.2252 -from {0x24f 0x252} -to 0x253 -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.2252 -from 0x259 -to 0x25e
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.2252 -from 0x269 -to 0x26e
setPathGroupOptions reg2reg_tmp.2252 -effortLevel high
reset_path_group -name in2reg_tmp.2252
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.2252
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -expCongRepairPDOneLoop
setPlaceMode -congRepairMaxIter 1
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
::goMC::is_advanced_metrics_collection_running
congRepair
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
reset_path_group -name reg2reg_tmp.2252
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2out_tmp.2252
set_global _is_ipo_interactive_path_groups 0
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
setvar spgRptErrorForScanConnection 0
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
spInternalUse tdgp clearSkpData
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -reset -ignoreScan
setPlaceMode -reset -repairPlace
getPlaceMode -quiet -NMPsuppressInfo
setvar spgSpeedupBuildVSM 0
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -tdgpMemFlow -quiet
setPlaceMode -reset -resetCombineRFLevel
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
checkPlace output/TM_select_3.checkPlace
setDrawView place
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix TM_select_3_preCTS -outDir timingReports
zoomBox -63.73900 -105.58000 398.62400 448.86100
zoomBox -18.55500 -62.56700 374.45400 408.70800
addTieHiLo -cell {LOGIC1JI3V LOGIC0JI3V} -prefix LTIE
setDrawView fplan
fit
selectObject Module npg1
setDrawView place
setDrawView ameba
setDrawView fplan
deselectAll
selectObject Module npg1
deselectAll
selectObject Module npg1
uiSetTool moveWire
deselectAll
selectObject Module npg1
deselectAll
selectObject Module npg1
deselectAll
selectObject Module npg1
deselectAll
selectObject Module npg1
