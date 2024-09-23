# Duplicates a sherd based on several factors

# If not all of the slots are filled, stop
execute unless data storage tcc:temp root.barrel_data[1][{Slot:3b}] run return 0
execute unless data storage tcc:temp root.barrel_data[1][{Slot:11b}] run return 0
execute unless data storage tcc:temp root.barrel_data[1][{Slot:12b}] run return 0
execute unless data storage tcc:temp root.barrel_data[1][{Slot:13b}] run return 0
execute unless data storage tcc:temp root.barrel_data[1][{Slot:21b}] run return 0

# Check that all the sherds are the same
data modify storage tcc:temp root.all_same_checker set from storage tcc:temp root.barrel_data[1]
data remove storage tcc:temp root.all_same_checker[].count
data remove storage tcc:temp root.all_same_checker[].components."minecraft:custom_name"
data remove storage tcc:temp root.all_same_checker[].Slot
scoreboard players set @s tcc.dummy 0
execute store success score @s tcc.dummy run data modify storage tcc:temp root.all_same_checker[0] set from storage tcc:temp root.all_same_checker[1]
execute if score @s tcc.dummy matches 1.. run return 0
execute store success score @s tcc.dummy run data modify storage tcc:temp root.all_same_checker[0] set from storage tcc:temp root.all_same_checker[3]
execute if score @s tcc.dummy matches 1.. run return 0
execute store success score @s tcc.dummy run data modify storage tcc:temp root.all_same_checker[0] set from storage tcc:temp root.all_same_checker[4]
execute if score @s tcc.dummy matches 1.. run return 0

# Check middle item for proper type
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:nether_brick"}] unless data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:prismarine_shard"}] unless data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"prismarine"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:brick"}] if data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}] run return 0

# Edit output item if everything checks out
item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.3
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data remove block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_name"

tag @s add tcc.pottery_table.assembled_output