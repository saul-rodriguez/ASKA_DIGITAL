create_route_type -name LeafUnshield -bottom_preferred_layer 2 -top_preferred_layer 3 
set_ccopt_property -route_type LeafUnshield -net_type leaf 

create_route_type -name TrunkUnshield -bottom_preferred_layer 2 -top_preferred_layer 3 
set_ccopt_property -route_type TrunkUnshield -net_type trunk 

timeDesign -preCTS 
timeDesign -preCTS -hold 

delete_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec -file "output/ccopt.spec"

source "output/ccopt.spec" 

set_ccopt_property allow_resize_of_dont_touch_cells false

# bulk based cells xh035
#set_ccopt_mode -cts_inverter_cells {INX1 INX2 INX3 INX4 INX8 INX12 INX16 INX20}
#set_ccopt_mode -cts_buffer_cells {BUX1 BUX2 BUX3 BUX4 BUX8 BUX12 BUX16 BUX20} 


# junction isolated cells xh035
#set_ccopt_mode -cts_inverter_cells {INLHDJIX1 INLHDJIX2 INLHDJIX3 INLHDJIX4 INLHDJIX8 INLHDJIX12 INLHDJIX16}
#set_ccopt_mode -cts_buffer_cells {BULHDJIX1 BULHDJIX2 BULHDJIX3 BULHDJIX4 BULHDJIX8 BULHDJIX12 BULHDJIX16} 

# junction isolated cells xh018 3V
set_ccopt_mode -cts_inverter_cells {INJI3VX1 INJI3VX2 INJI3VX3 INJI3VX4 INJI3VX6 INJI3VX8 INJI3VX12 INJI3VX16}
set_ccopt_mode -cts_buffer_cells {BUJI3VX1 BUJI3VX2 BUJI3VX3 BUJI3VX4 BUJI3VX6 BUJI3VX8 BUJI3VX12 BUJI3VX16} 

ccopt_design -cts 

setRouteMode -earlyGlobalMaxRouteLayer 4
optDesign -postCTS
optDesign -postCTS -hold





