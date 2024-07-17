# place standard cell
#####################
setRouteMode -earlyGlobalMaxRouteLayer 3
placeDesign

checkPlace "output/TM_select_3.checkPlace"
setDrawView place

# timing report
################
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix TM_select_3_preCTS -outDir timingReports 
