extractRC
rcOut -spef output/TOP_TM_select.spf -rc_corner max_rc
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf -view fast_functional_mode "output/design_fast.sdf"
write_sdf -view slow_functional_mode "output/design_slow.sdf"


