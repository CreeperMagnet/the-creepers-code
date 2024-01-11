# Commands to run as a pottery table that was just opened. Fixes edge case bugs

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.block set from block ~ ~ ~
setblock ~ ~ ~ minecraft:spruce_planks
setblock ~ ~ ~ minecraft:barrel
data modify block ~ ~ ~ {} merge from storage tcc:storage root.temp.block