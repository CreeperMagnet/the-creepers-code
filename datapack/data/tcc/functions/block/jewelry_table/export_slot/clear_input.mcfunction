############################################################
# Description: Clears the input
# Creator: CreeperMagnet_
############################################################

data remove block ~ ~ ~ Items[{Slot:0b}]
execute if block ~ ~ ~ hopper{Items:[{Slot:3b}]} run function tcc:block/jewelry_table/export_slot/remove_amethyst_dust
execute unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[3] set value {Slot:3b}


execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:0b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[0] set value {Slot:0b}
execute if block ~ ~ ~ hopper{Items:[{Slot:1b}]} run function tcc:block/jewelry_table/export_slot/remove_1_gemstone
execute unless block ~ ~ ~ hopper{Items:[{Slot:1b}]} if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[1] set value {Slot:1b}
data remove block ~ ~ ~ Items[{Slot:2b}]
execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}
execute unless block ~ ~ ~ hopper{Items:[{id:"minecraft:milk_bucket",Slot:2b}]} run data remove block ~ ~ ~ Items[{Slot:2b}]
execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}
execute if block ~ ~ ~ hopper{Items:[{id:"minecraft:milk_bucket",Slot:2b}]} run item replace block ~ ~ ~ container.2 with bucket
execute if block ~ ~ ~ hopper{Items:[{id:"minecraft:bucket",Slot:2b}]} run data modify entity @s ArmorItems[2].tag.tcc.stored_slots[{Slot:2b}] set from block ~ ~ ~ Items[{Slot:2b}]
playsound tcc:block.jewelry_table.use block @a[distance=..16]
tag @s remove tcc.jewelry_table.assembled_output
