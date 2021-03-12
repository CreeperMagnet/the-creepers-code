############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

execute unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",potion:{}}}}]} if data block ~ ~ ~ Items[{Slot:3b}].tag.Potion unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:thick"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:mundane"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} if block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:lingering_potion"}]} run tag @s add tcc.tag
execute if block ~ ~ ~ hopper{Items:[{Slot:3b,id:"minecraft:milk_bucket"}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{potion:{}}}}]} run tag @s add tcc.tag
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ hopper{Items:[{Slot:3b}]} run function tcc:block/jewelry_table/export_slot/3
tag @s remove tcc.tag

execute if block ~ ~ ~ hopper{Items:[{Slot:0b}]} run tag @s add tcc.jewelry_table.needs_to_assemble