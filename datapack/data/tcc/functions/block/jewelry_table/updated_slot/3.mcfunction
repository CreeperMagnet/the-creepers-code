############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b,tag:{tcc:{id:"amethyst_dust"}}}]} run function tcc:block/jewelry_table/export_slot/3
execute if block ~ ~ ~ hopper{Items:[{Slot:0b},{Slot:3b}]} run tag @s add tcc.jewelry_table.needs_to_assemble
execute unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} run function tcc:block/jewelry_table/export_slot/clear_output
