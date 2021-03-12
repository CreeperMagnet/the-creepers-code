############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:enchanted_book"}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b}]} run data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 2b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion"}]} if data block ~ ~ ~ Items[{Slot:1b}].tag.Potion unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:thick"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:mundane"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 3b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{potion:{}}}},{Slot:1b,id:"minecraft:milk_bucket"}]} run data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 3b
execute if data entity @s[scores={tcc.dummy=1..}] ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[1] set value {Slot:1b}
scoreboard players reset @s tcc.dummy

execute if block ~ ~ ~ hopper{Items:[{tag:{tcc:{id:"ring",gemstone:{}}},Slot:0b},{Slot:1b}]} run function tcc:block/jewelry_table/export_slot/1_check_gemstone
execute if block ~ ~ ~ hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ hopper{Items:[{tag:{tcc:{id:"gemstone"}},Slot:1b}]} unless block ~ ~ ~ hopper{Items:[{id:"minecraft:end_crystal",Slot:1b}]} run function tcc:block/jewelry_table/export_slot/1

execute if block ~ ~ ~ hopper{Items:[{Slot:0b}]} run tag @s add tcc.jewelry_table.needs_to_assemble