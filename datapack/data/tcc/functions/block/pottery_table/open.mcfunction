############################################################
# Commands to run as a pottery table that was just opened. Fixes edge case bugs
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.block set from block ~ ~ ~
setblock ~ ~ ~ spruce_planks
setblock ~ ~ ~ barrel
data modify block ~ ~ ~ {} merge from storage tcc:storage root.temp.block