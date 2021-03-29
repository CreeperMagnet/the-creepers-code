############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{tcc:{id:"amethyst_dust"}}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} run data modify block ~ ~ ~ Items[{Slot:2b}].Slot set value 3b
execute if data entity @s[scores={tcc.dummy=1..}] ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}
scoreboard players reset @s tcc.dummy


execute unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",potion:{}}}}]} if data block ~ ~ ~ Items[{Slot:2b}].tag.Potion unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:thick"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:mundane"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} if block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion"}]} run tag @s add tcc.tag
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:milk_bucket"}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{potion:{}}}}]} run tag @s add tcc.tag
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ hopper{Items:[{Slot:2b}]} run function tcc:block/jewelry_table/export_slot/2
tag @s remove tcc.tag

execute if block ~ ~ ~ hopper{Items:[{Slot:0b},{Slot:3b}]} run tag @s add tcc.jewelry_table.needs_to_assemble
