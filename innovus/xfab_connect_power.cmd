clearGlobalNets

# Bulk based cells
#globalNetConnect gnd -type pgpin -pin gnd -instanceBasename * -hierarchicalInstance {}  
#globalNetConnect vdd -type pgpin -pin vdd -instanceBasename * -hierarchicalInstance {}

# Junction Isolated cells
#globalNetConnect gndi -type pgpin -pin gndi -instanceBasename * -hierarchicalInstance {}  
#globalNetConnect vddi -type pgpin -pin vddi -instanceBasename * -hierarchicalInstance {}

# Junction Isolated cells 3V
globalNetConnect gnd3i -type pgpin -pin gnd3i -instanceBasename * -hierarchicalInstance {}
globalNetConnect vdd3i -type pgpin -pin vdd3i -instanceBasename * -hierarchicalInstance {}




