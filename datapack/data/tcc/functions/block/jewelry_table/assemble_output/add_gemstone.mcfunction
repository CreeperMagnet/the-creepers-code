############################################################
# Description: Runs gemstone functions
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from block ~ ~ ~ Items[{Slot:4b}]
data modify storage tcc:storage root.temp.gemstone set from block ~ ~ ~ Items[{Slot:1b}].tag.tcc.gemstone
scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count 1
execute if entity @s[scores={tcc.dummy=20..}] run data modify storage tcc:storage root.temp.gemstone.quality set value "pristine"
function tcc:item/item_modification/ring/add_gemstone/main
data modify block ~ ~ ~ Items[{Slot:4b}].tag set from storage tcc:storage root.temp.item.tag
