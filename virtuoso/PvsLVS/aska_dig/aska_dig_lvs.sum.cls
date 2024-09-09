##############################################################################################################
#####  
#####                                         PVS LVS COMPARISON
#####  
#####  Version                       :   23.10-p043
#####  NVN Run Start                 :   Mon Sep  9 14:22:39 2024
#####  ERC Summary File              :   aska_dig.sum
#####  Extraction Report File        :   aska_dig_lvs.sum
#####  Comparison Report File        :   aska_dig_lvs.sum.cls
#####  Top Cell                      :   aska_dig  <vs>  aska_dig
#####  
#####                                :      @     @
#####                                :       @   @ 
#####                                :        @ @  
#####  Run Result                    :     MISMATCH
#####                                :        @ @  
#####                                :       @   @ 
#####                                :      @     @
#####  
#####  Run Summary                   :   [ERROR] Connectivity Mismatches
#####                                :   [ERROR] Pin Mismatches
#####                                :   [INFO]  ERC Results: Empty
#####                                :   [INFO]  Extraction Clean
#####  
#####  Layout Design                 :   ASKA_DIG2 aska_dig layout
#####  Schematic File                :   /home/saul/projects/ASKA_DIGITAL/ASKA_DIG/virtuoso/PvsLVS/aska_dig/aska_dig.cdl (cdl)
#####  Rules File                    :   /home/saul/projects/ASKA_DIGITAL/ASKA_DIG/virtuoso/PvsLVS/aska_dig/.config.rul
#####                                :   /home/saul/projects/ASKA_DIGITAL/ASKA_DIG/virtuoso/PvsLVS/aska_dig/.technology.rul
#####  Pin Swap File                 :   aska_dig_lvs.sum.cps
#####  
#####  Extraction CPU Time           :   0h 0m 1s - (1s)
#####  Extraction Exec Time          :   0h 0m 2s - (2s)
#####  Extraction Peak Memory Usage  :   59.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 1s - (1s)                 
#####  NVN Peak Memory Usage         :   386.01MB
#####  LVS Total CPU Time            :   0h 0m 1s - (1s)                 
#####  LVS Total Exec Time           :   0h 0m 3s - (3s)                 
#####  LVS Total Peak Memory Usage   :   386.01MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         0
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         1
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         0
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

             |     Initial Pins     |     Compare Pins     |              | 
Cell         |   lay    :    sch    |   lay    :    sch    | Status       | Detail
-------------+----------+-----------+----------+-----------+--------------+-------------------
aska_dig     |       80 :        80 |      *80 :        82 | mismatch     | pin mismatches


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          aska_dig {-top_cell aska_dig}
    schematic_primary                       aska_dig {-source_top_cell aska_dig}

LVS Rules Given in the Rules File
---------------------------------

    lvs_abort                               -softchk                               no  
    lvs_abort                               -supply_error                          no  
    lvs_abort                               -check_device_for_property_rule        no  
    layout_path                             /home/saul/projects/ASKA_DIGITAL/ASKA_DIG/virtuoso/PvsLVS/aska_dig/aska_dig.gds
    layout_format                           gdsii
    schematic_path                          /home/saul/projects/ASKA_DIGITAL/ASKA_DIG/virtuoso/PvsLVS/aska_dig/aska_dig.cdl
    schematic_format                        cdl
    lvs_write_netlist                       -layout netlistLAYOUT
    lvs_write_netlist                       -schematic netlistSOURCE
    lvs_spice                               yes -replicate_devices
    lvs_spice                               yes -allow_unquoted_strings
    lvs_spice_multiplier_name               M 
                                             
    lvs_power_name                          VDD? DVDD VCC VDDA VDDB ADVDD VDDM 
    lvs_ground_name                         GND? DVSS VSS GROUND AGND DGND VSSM 
    lvs_device_type                         NMOS NEI_6
    lvs_device_type                         NMOS NEI_M_6
    lvs_device_type                         NMOS NELI_6
    lvs_device_type                         NMOS NELI_M_6
    lvs_device_type                         NMOS NELNAI_6
    lvs_device_type                         NMOS NELNAI_M_6
    lvs_device_type                         NMOS NESVTI_6
    lvs_device_type                         NMOS NESVTI_M_6
    lvs_device_type                         PMOS PE_5
    lvs_device_type                         PMOS PEL_5
    lvs_device_type                         PMOS PEI_5
    lvs_device_type                         PMOS PEI_M_5
    lvs_device_type                         PMOS PELI_5
    lvs_device_type                         PMOS PELI_M_5
    lvs_device_type                         PMOS PESVT_5
    lvs_device_type                         PMOS PESVTI_5
    lvs_device_type                         PMOS PESVTI_M_5
    lvs_device_type                         PMOS PMMA_BJT
    lvs_device_type                         PMOS PMA_BJT
    lvs_device_type                         PMOS PMMC_BJT
    lvs_device_type                         PMOS PHHV_BJT
    lvs_device_type                         LDDPMOS PMC_BJT
    lvs_device_type                         LDDPMOS PHV_BJT
    lvs_device_type                         NMOS NE3I_6
    lvs_device_type                         NMOS NE3I_M_6
    lvs_device_type                         NMOS ND3I_6
    lvs_device_type                         NMOS ND3I_M_6
    lvs_device_type                         NMOS NE3LNAI_6
    lvs_device_type                         NMOS NE3LNAI_M_6
    lvs_device_type                         PMOS PE3_5
    lvs_device_type                         PMOS PE3LN_5
    lvs_device_type                         PMOS PE3I_5
    lvs_device_type                         PMOS PE3I_M_5
    lvs_device_type                         PMOS PE3LNI_5
    lvs_device_type                         PMOS PE3LNI_M_5
    lvs_device_type                         PMOS PE3LNA_5
    lvs_device_type                         PMOS PE3LNAI_5
    lvs_device_type                         PMOS PE3LNAI_M_5
    lvs_all_cap_pins_swappable              no  
    lvs_ignore_ports                        no  
    lvs_compare_port_names                  yes 
    lvs_find_shorts                         no  
    lvs_break_ambig_max                     32
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -capacitors
    lvs_filter_device                       D ( p_dn ) -open
    lvs_filter_device                       D ( p_dbn ) -open
    lvs_filter_device                       D ( p_dp ) -open
    lvs_filter_device                       D ( p_dpndf ) -open
    lvs_filter_device                       D ( p_dnw ) -open
    lvs_filter_device                       D ( p_dhnw ) -open
    lvs_filter_device                       D ( p_dhpw ) -open
    lvs_filter_device                       D ( p_ddnw ) -open
    lvs_filter_device                       D ( p_ddnwmv ) -open
    lvs_filter_device                       D ( p_dipdnw ) -open
    lvs_filter_device                       D ( p_dipdnwmv ) -open
    lvs_filter_device                       D ( p_ddpldnw ) -open
    lvs_filter_device                       D ( p_dndf ) -open
    lvs_filter_device                       D ( p_dpdwhn ) -open
    lvs_filter_device                       D ( p_dwhn ) -open
    lvs_filter_device                       D ( p_dpdddnw ) -open
    lvs_filter_device                       D ( p_dnhpw ) -open
    lvs_filter_device                       D ( p_dphnw ) -open
    lvs_filter_device                       D ( p_dpdnwmv ) -open
    lvs_filter_device                       D ( p_dpdnw ) -open
    lvs_filter_device                       D ( p_dpwhn ) -open
    lvs_filter_device                       D ( p_dn3 ) -open
    lvs_filter_device                       D ( p_dnn3 ) -open
    lvs_filter_device                       D ( p_dn3dpl ) -open
    lvs_filter_device                       D ( p_dp3 ) -open
    lvs_filter_device                       D ( p_dnw3 ) -open
    lvs_reduce_split_gates                  no  
    lvs_recognize_gates                     -none
    lvs_reduce                              no  -parallel_bipolar
    lvs_reduce                              no  -parallel_caps
    lvs_reduce                              yes -parallel_diodes ...
    lvs_reduce                              yes -parallel_mos ...
    lvs_reduce                              no  -series_mos
    lvs_reduce                              no  -parallel_resistors
    lvs_reduce                              no  -series_caps
    lvs_reduce                              no  -series_resistors
    lvs_reduce_device                       MOSVC -parallel yes ...
    lvs_reduce_device                       MOSVCI -parallel yes ...
    lvs_reduce_device                       MOSVCI_M -parallel yes ...
    lvs_reduce_device                       MOSVC3 -parallel yes ...
    lvs_reduce_device                       MOSVC3I -parallel yes ...
    lvs_reduce_device                       MOSVC3I_M -parallel yes ...
    lvs_reduce_device                       tag_25v -parallel yes 
    lvs_reduce_device                       tag_60v -parallel yes 
    lvs_expand_cell_on_error                no  
    lvs_check_property                      MN W W -tolerance 1
    lvs_check_property                      MN L L -tolerance 1
    lvs_check_property                      MP W W -tolerance 1
    lvs_check_property                      MP L L -tolerance 1
    lvs_check_property                      NEI_6 W W -tolerance 1
    lvs_check_property                      NEI_6 L L -tolerance 1
    lvs_check_property                      NEI_M_6 W W -tolerance 1
    lvs_check_property                      NEI_M_6 L L -tolerance 1
    lvs_check_property                      NELI_6 W W -tolerance 1
    lvs_check_property                      NELI_6 L L -tolerance 1
    lvs_check_property                      NELI_M_6 W W -tolerance 1
    lvs_check_property                      NELI_M_6 L L -tolerance 1
    lvs_check_property                      NELNAI_6 W W -tolerance 1
    lvs_check_property                      NELNAI_6 L L -tolerance 1
    lvs_check_property                      NELNAI_M_6 W W -tolerance 1
    lvs_check_property                      NELNAI_M_6 L L -tolerance 1
    lvs_check_property                      NESVTI_6 W W -tolerance 1
    lvs_check_property                      NESVTI_6 L L -tolerance 1
    lvs_check_property                      NESVTI_M_6 W W -tolerance 1
    lvs_check_property                      NESVTI_M_6 L L -tolerance 1
    lvs_check_property                      NE3I_6 W W -tolerance 1
    lvs_check_property                      NE3I_6 L L -tolerance 1
    lvs_check_property                      NE3I_M_6 W W -tolerance 1
    lvs_check_property                      NE3I_M_6 L L -tolerance 1
    lvs_check_property                      ND3I_6 W W -tolerance 1
    lvs_check_property                      ND3I_6 L L -tolerance 1
    lvs_check_property                      ND3I_M_6 W W -tolerance 1
    lvs_check_property                      ND3I_M_6 L L -tolerance 1
    lvs_check_property                      NE3LNAI_6 W W -tolerance 1
    lvs_check_property                      NE3LNAI_6 L L -tolerance 1
    lvs_check_property                      NE3LNAI_M_6 W W -tolerance 1
    lvs_check_property                      NE3LNAI_M_6 L L -tolerance 1
    lvs_check_property                      PE_5 W W -tolerance 1
    lvs_check_property                      PE_5 L L -tolerance 1
    lvs_check_property                      PEL_5 W W -tolerance 1
    lvs_check_property                      PEL_5 L L -tolerance 1
    lvs_check_property                      PE3_5 W W -tolerance 1
    lvs_check_property                      PE3_5 L L -tolerance 1
    lvs_check_property                      PE3LN_5 W W -tolerance 1
    lvs_check_property                      PE3LN_5 L L -tolerance 1
    lvs_check_property                      PEI_5 W W -tolerance 1
    lvs_check_property                      PEI_5 L L -tolerance 1
    lvs_check_property                      PEI_M_5 W W -tolerance 1
    lvs_check_property                      PEI_M_5 L L -tolerance 1
    lvs_check_property                      PELI_5 W W -tolerance 1
    lvs_check_property                      PELI_5 L L -tolerance 1
    lvs_check_property                      PELI_M_5 W W -tolerance 1
    lvs_check_property                      PELI_M_5 L L -tolerance 1
    lvs_check_property                      PESVT_5 W W -tolerance 1
    lvs_check_property                      PESVT_5 L L -tolerance 1
    lvs_check_property                      PESVTI_5 W W -tolerance 1
    lvs_check_property                      PESVTI_5 L L -tolerance 1
    lvs_check_property                      PESVTI_M_5 W W -tolerance 1
    lvs_check_property                      PESVTI_M_5 L L -tolerance 1
    lvs_check_property                      PE3I_5 W W -tolerance 1
    lvs_check_property                      PE3I_5 L L -tolerance 1
    lvs_check_property                      PE3I_M_5 W W -tolerance 1
    lvs_check_property                      PE3I_M_5 L L -tolerance 1
    lvs_check_property                      PE3LNI_5 W W -tolerance 1
    lvs_check_property                      PE3LNI_5 L L -tolerance 1
    lvs_check_property                      PE3LNI_M_5 W W -tolerance 1
    lvs_check_property                      PE3LNI_M_5 L L -tolerance 1
    lvs_check_property                      PE3LNA_5 W W -tolerance 1
    lvs_check_property                      PE3LNA_5 L L -tolerance 1
    lvs_check_property                      PE3LNAI_5 W W -tolerance 1
    lvs_check_property                      PE3LNAI_5 L L -tolerance 1
    lvs_check_property                      PE3LNAI_M_5 W W -tolerance 1
    lvs_check_property                      PE3LNAI_M_5 L L -tolerance 1
    lvs_check_property                      PMC_BJT W W -tolerance 1
    lvs_check_property                      PMC_BJT L L -tolerance 1
    lvs_check_property                      PHV_BJT W W -tolerance 1
    lvs_check_property                      PHV_BJT L L -tolerance 1
    lvs_check_property                      PMA_BJT W W -tolerance 1
    lvs_check_property                      PMA_BJT L L -tolerance 1
    lvs_check_property                      PMMA_BJT W W -tolerance 1
    lvs_check_property                      PMMA_BJT L L -tolerance 1
    lvs_check_property                      PMMC_BJT W W -tolerance 1
    lvs_check_property                      PMMC_BJT L L -tolerance 1
    lvs_check_property                      PHHV_BJT W W -tolerance 1
    lvs_check_property                      PHHV_BJT L L -tolerance 1
    lvs_check_property                      MOSVC W W -tolerance 1
    lvs_check_property                      MOSVC L L -tolerance 1
    lvs_check_property                      MOSVCI W W -tolerance 1
    lvs_check_property                      MOSVCI L L -tolerance 1
    lvs_check_property                      MOSVCI_M W W -tolerance 1
    lvs_check_property                      MOSVCI_M L L -tolerance 1
    lvs_check_property                      MOSVC3 W W -tolerance 1
    lvs_check_property                      MOSVC3 L L -tolerance 1
    lvs_check_property                      MOSVC3I W W -tolerance 1
    lvs_check_property                      MOSVC3I L L -tolerance 1
    lvs_check_property                      MOSVC3I_M W W -tolerance 1
    lvs_check_property                      MOSVC3I_M L L -tolerance 1
    lvs_check_property                      LDDN W W -tolerance 1
    lvs_check_property                      LDDN L L -tolerance 1
    lvs_check_property                      LDDP W W -tolerance 1
    lvs_check_property                      LDDP L L -tolerance 1
    lvs_check_property                      Q ( qnva ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvb ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvba ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvc ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvca ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvz ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvascr ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvhscr ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvhbscr ) LE LE -tolerance 0
    lvs_check_property                      R ( s_res ) R R -tolerance 0
    lvs_check_property                      R W W -tolerance 1
    lvs_check_property                      R L L -tolerance 1
    lvs_check_property                      C AREA AREA -tolerance 1
    lvs_check_property                      C PERIMETER PERIMETER -tolerance 1
    lvs_check_property                      D A A -tolerance 5
    lvs_check_property                      D P P -tolerance 5
    lvs_check_property                      DPHOC area area -tolerance 1
    lvs_check_property                      DPHOC perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOCFP area area -tolerance 1
    lvs_check_property                      DPHOCFP perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOC0 area area -tolerance 1
    lvs_check_property                      DPHOC0 perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOD area area -tolerance 1
    lvs_check_property                      DPHOD perimeter perimeter -tolerance 1
    lvs_check_property                      DPHODFP area area -tolerance 1
    lvs_check_property                      DPHODFP perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOD0 area area -tolerance 1
    lvs_check_property                      DPHOD0 perimeter perimeter -tolerance 1
    lvs_check_property                      DAPB area area -tolerance 1
    lvs_check_property                      DAPB perimeter perimeter -tolerance 1
    lvs_check_property                      DAPB0 area area -tolerance 1
    lvs_check_property                      DAPB0 perimeter perimeter -tolerance 1
    lvs_check_property                      DSPB area area -tolerance 1
    lvs_check_property                      DSPB perimeter perimeter -tolerance 1
    lvs_check_property                      DSPB0 area area -tolerance 1
    lvs_check_property                      DSPB0 perimeter perimeter -tolerance 1
    lvs_check_property                      DSPBFEP area area -tolerance 1
    lvs_check_property                      DSPBFEP perimeter perimeter -tolerance 1
    lvs_report_file                         aska_dig_lvs.sum
    lvs_report_max                          1000 -mismatched_net_limit 100 
    unit                                    -length u
    unit                                    -capacitance ff
    unit                                    -resistance ohm
    input_scale                             1000
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         no  -report
    virtual_connect                         -depth primary
    text_depth                              -primary

Default LVS Rule Values
-----------------------

    lvs_abort                               -missing_hcell no
    lvs_abort                               -erc_error yes
    lvs_abort                               -inconsistent_reduction yes
    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    // lvs_delete_cell                       
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             no -allow_inconsistent_model
    lvs_netlist                             yes -properties_comment
    // lvs_write_netlist_reduced             
    // lvs_delete_cell_pin                   
    // lvs_black_box                         
    // lvs_interposer                        
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices_enhanced
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    lvs_spice                               yes -strict_subckts_order
    // lvs_spice_option                      
    lvs_reverse_wl                          no
                                             
    lvs_compare_case                        no
    lvs_cname                               no  -cell
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    lvs_exact_subtypes                      no
    lvs_preserve_box_ports                  no
    // lvs_cpoint                            
    // lvs_cell_list                         
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
    // lvs_filter_option                     
    // lvs_filter_device_keep_net            
    lvs_reduction_priority                  -parallel
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              no  -series_diodes
    // lvs_reduce_do_not_merge               
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
    lvs_warn_max                            50
    lvs_inconsistent_reduction_threshold    1000000
    // lvs_report_opt                        
    lvs_report_units                        yes
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    // lvs_map_device                        
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_verilog_detect_buses                no
    lvs_do_not_normalize                    no
    // lvs_generic_device                    
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
    port                                    -depth -primary

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    lvs_derive_logic                        no   -sram
    virtual_connect                         no  -report


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              ##################################################
                              #                                                #
                              #       ------->>> $ MISMATCH $ <<<-------       #
                              #                                                #
                              #            aska_dig  <vs>  aska_dig            #
                              #                                                #
                              #            CONNECTIVITY MISMATCHES             #
                              #                 PIN MISMATCHES                 #
                              #                                                #
                              ##################################################

+===[aska_dig]================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                      |       Original       |       Filtered       |        Reduced        |    Unmatched    
Cell                  |    lay    :   sch    |    lay    :   sch    |    lay    :    sch    |  lay   :  sch
----------------------+-----------+----------+-----------+----------+-----------+-----------+--------+--------
MP [4 pins]           |           :          |           :          |           :           |        :        
 MP(PE3I)             |   *13,433 :   12,388 |   *13,433 :   12,388 |    12,280 :    12,280 |      0 :       0
MN [4 pins]           |           :          |           :          |           :           |        :        
 MN(NE3I)             |   *13,496 :   12,552 |   *13,496 :   12,552 |    12,452 :    12,452 |      0 :       0
(D [2 pins], -)       |           :          |           :          |           :           |        :        
 (D(P_DDNWMV), -)     |        *1 :        0 |         0 :        0 |         - :         - |      - :       -
 (D(P_DIPDNWMV), -)   |       *22 :        0 |         0 :        0 |         - :         - |      - :       -
----------------------+-----------+----------+-----------+----------+-----------+-----------+--------+--------
Total                 |    26,952 :   24,940 |    26,929 :   24,940 |    24,732 :    24,732 |      0 :       0
======================+===========+==========+===========+==========+===========+===========+========+========
Pins                  |           :          |           :          |       *80 :        82 |      0 :       0
Nets                  |           :          |           :          |   *13,667 :    13,665 |      0 :       0
======================+===========+==========+===========+==========+===========+===========+========+========

+===[aska_dig]================================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                |      Parallel       |      Series       |     Deleted Nets     
Cell            |    lay    :   sch   |   lay   :   sch   |    lay    :   sch
----------------+-----------+---------+---------+---------+-----------+----------
MP [4 pins]     |           :         |         :         |           :          
 MP(PE3I)       |     1,153 :     108 |       - :       - |         0 :         0
MN [4 pins]     |           :         |         :         |           :          
 MN(NE3I)       |     1,044 :     100 |       - :       - |         0 :         0
----------------+-----------+---------+---------+---------+-----------+----------

+===[aska_dig]================================================================================================
|                                           INITIAL CORRESPONDENCES                                           
+=============================================================================================================

Type | Name
-----+--------------------------------------------------------------------------------------------------------
Pin  | clk DAC<0> DAC<1> DAC<2> DAC<3> DAC<4> DAC<5> down_switches<0> down_switches<10> down_switches<11>
     | down_switches<12> down_switches<13> down_switches<14> down_switches<15> down_switches<16>
     | down_switches<17> down_switches<18> down_switches<19> down_switches<1> down_switches<20>
     | down_switches<21> down_switches<22> down_switches<23> down_switches<24> down_switches<25>
     | down_switches<26> down_switches<27> down_switches<28> down_switches<29> down_switches<2>
     | down_switches<30> down_switches<31> down_switches<3> down_switches<4> down_switches<5> down_switches<6>
     | down_switches<7> down_switches<8> down_switches<9> enable IC_addr<0> IC_addr<1> porborn pulse_active
     | reset_l SPI_Clk SPI_CS SPI_MOSI up_switches<0> up_switches<10> up_switches<11> up_switches<12>
     | up_switches<13> up_switches<14> up_switches<15> up_switches<16> up_switches<17> up_switches<18>
     | up_switches<19> up_switches<1> up_switches<20> up_switches<21> up_switches<22> up_switches<23>
     | up_switches<24> up_switches<25> up_switches<26> up_switches<27> up_switches<28> up_switches<29>
     | up_switches<2> up_switches<30> up_switches<31> up_switches<3> up_switches<4> up_switches<5>
     | up_switches<6> up_switches<7> up_switches<8> up_switches<9>


+===[aska_dig]================================================================================================
|                                       UNMATCHED SCHEMATIC PIN LABELS                                        
+=============================================================================================================

Labeled Schematic Pin     | Matched Layout Pin     | Matched Layout Net
--------------------------+------------------------+-----------------------
gnd3i!                    | ** missing pin **      | 1362
vdd3i!                    | ** missing pin **      | 1364


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

