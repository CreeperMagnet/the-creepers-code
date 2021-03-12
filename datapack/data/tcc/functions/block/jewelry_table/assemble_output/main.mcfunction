############################################################
# Description: Creates the output based on the inputs given
# Creator: CreeperMagnet_
############################################################

replaceitem block ~ ~ ~ container.4 minecraft:carrot_on_a_stick
data modify block ~ ~ ~ Items[{Slot:4b}].tag set from block ~ ~ ~ Items[{Slot:0b}].tag
execute if block ~ ~ ~ hopper{Items:[{id:"minecraft:milk_bucket",Slot:3b}]} run function tcc:block/jewelry_table/assemble_output/add_milk
execute if block ~ ~ ~ hopper{Items:[{id:"minecraft:lingering_potion",Slot:3b}]} run function tcc:block/jewelry_table/assemble_output/add_potion
execute if block ~ ~ ~ hopper{Items:[{tag:{tcc:{id:"gemstone"}},Slot:1b}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",gemstone:{}}}}]} run function tcc:block/jewelry_table/assemble_output/add_gemstone
execute if block ~ ~ ~ hopper{Items:[{tag:{tcc:{id:"gemstone"}},Slot:1b}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",gemstone:{}}}}]} run function tcc:block/jewelry_table/assemble_output/repair_gemstone_ring
execute if block ~ ~ ~ hopper{Items:[{id:"minecraft:enchanted_book",Slot:2b}]} run function tcc:block/jewelry_table/assemble_output/add_enchantment

data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}] set from block ~ ~ ~ Items[{Slot:4b}]

data remove storage tcc:storage root.temp
tag @s add tcc.jewelry_table.assembled_output
