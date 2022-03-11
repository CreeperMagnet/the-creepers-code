############################################################
# Commands to run tickly for open jewelry tables
############################################################

# Check if the contents of the barrel have changed at all
data modify entity @s ArmorItems[3].tag.tcc.stored_barrel_data[0] set from entity @s ArmorItems[3].tag.tcc.stored_barrel_data[1]
execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.tcc.stored_barrel_data[1] set from block ~ ~ ~ Items
scoreboard players set @s[tag=!tcc.jewelry_table.open] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..}] if data block ~ ~ ~ Items run function tcc:block/jewelry_table/crafting/barrel_updated

# Fix hopper minecarts being evil little garbage machines
execute positioned ~ ~-2 ~ as @e[type=minecraft:hopper_minecart,dy=2,tag=!smithed.entity] at @s run function tcc:block/jewelry_table/tick/hopper_minecart 

# Add tag
tag @s add tcc.jewelry_table.open
