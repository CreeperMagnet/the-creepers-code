############################################################
# Description: Functions to check if a GUI has updated for a jewelry table
# Creator: CreeperMagnet_
############################################################

execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}] set from block ~ ~ ~ Items[{Slot:4b}]
execute store success score @s tcc.dummy unless block ~ ~ ~ hopper{Items:[{Slot:4b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[4] set value {Slot:4b}
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/updated_slot/4
execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:0b}] set from block ~ ~ ~ Items[{Slot:0b}]
execute store success score @s tcc.dummy unless block ~ ~ ~ hopper{Items:[{Slot:0b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:0b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[0] set value {Slot:0b}
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/updated_slot/0
execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}] set from block ~ ~ ~ Items[{Slot:1b}]
execute store success score @s tcc.dummy unless block ~ ~ ~ hopper{Items:[{Slot:1b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[1] set value {Slot:1b}
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/updated_slot/1
execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}] set from block ~ ~ ~ Items[{Slot:2b}]
execute store success score @s tcc.dummy unless block ~ ~ ~ hopper{Items:[{Slot:2b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/updated_slot/2
execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}] set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score @s tcc.dummy unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[3] set value {Slot:3b}
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/updated_slot/3
execute if entity @s[tag=tcc.jewelry_table.needs_to_assemble] run function tcc:block/jewelry_table/assemble_output/check
