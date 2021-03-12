############################################################
# Description: Checks if the gemstone is a proper type if the ring has a gemstone
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",repaired:0b,gemstone:{quality:"pristine"}}}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,tag:{tcc:{gemstone:{quality:"pristine"}}}}]} run function tcc:block/jewelry_table/export_slot/1
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",repaired:0b,gemstone:{}}}}]} run data modify storage tcc:storage root.temp.jewelry_table_gem set from block ~ ~ ~ Items[{Slot:0b}].tag.tcc.gemstone.id
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.jewelry_table_gem set from block ~ ~ ~ Items[{Slot:1b}].tag.tcc.gemstone.id
execute unless entity @s[scores={tcc.dummy=0}] run function tcc:block/jewelry_table/export_slot/1
scoreboard players reset @s tcc.dummy