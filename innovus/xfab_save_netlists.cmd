#only logical letlist
saveNetlist "output/pnr.v" 

#physical instances including power and ground (for LVS in calibre)
saveNetlist "output/pnr_lvs.v" -phys -excludeLeafCell

#logical netlist + capacitors (for LVS in Cadence)

#bulk based cells x035
#saveNetlist "output/pnr_cap.v"  -includePhysicalCell { DECAP25 DECAP10 DECAP5 DECAP3 DECAP2 }

#junction isolated cells x035 
#saveNetlist "output/pnr_cap.v"  -includePhysicalCell { DECAP25LHDJI DECAP10LHDJI DECAP5LHDJI DECAP3LHDJI DECAP2LHDJI }

#junction isolated cells x018 3V
saveNetlist "output/pnr_cap.v"  -includePhysicalCell { DECAP25JI3V DECAP15JI3V DECAP10JI3V DECAP7JI3V DECAP5JI3V }

