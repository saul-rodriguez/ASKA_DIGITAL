setEndCapMode -reset
setEndCapMode -boundary_tap false
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
#setRouteMode -earlyGlobalMaxRouteLayer 3
setRouteMode -earlyGlobalMaxRouteLayer 4
optDesign -preCTS

