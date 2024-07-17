# Definition of Innovus variables
#################################

setOaxMode -compressLevel 0
setOaxMode -allowBitConnection true
setOaxMode -allowTechUpdate false
setOaxMode -updateMode true
#setDesignMode -process 250
setDesignMode -process 180
setViaGenMode -symmetrical_via_only true

# Globals
##########

set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
setMultiCpuUsage -localCpu 4

