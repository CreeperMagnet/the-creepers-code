############################################################
# Description: Checks if the output can be assembled
# Creator: CreeperMagnet_
############################################################

execute unless block ~ ~ ~ hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} run tag @s add tcc.tag
execute if entity @s[tag=!tcc.tag] run function tcc:block/jewelry_table/assemble_output/main
execute if entity @s[tag=tcc.tag] if block ~ ~ ~ hopper{Items:[{Slot:4b}]} run function tcc:block/jewelry_table/export_slot/clear_output

tag @s remove tcc.tag
tag @s remove tcc.jewelry_table.needs_to_assemble