# Commands to run as a pottery table that was just opened. Fixes edge case bugs

data remove storage tcc:temp root
data modify storage tcc:temp root.block set from block ~ ~ ~
setblock ~ ~ ~ minecraft:spruce_planks
setblock ~ ~ ~ minecraft:barrel
data modify block ~ ~ ~ {} merge from storage tcc:temp root.block