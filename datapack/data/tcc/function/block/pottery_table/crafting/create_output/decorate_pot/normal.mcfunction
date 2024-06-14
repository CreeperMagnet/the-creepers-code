# Decorates a normal pot

execute if data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1b
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage tcc:temp root.item.components."minecraft:pot_decorations" run data modify storage tcc:temp root.item.components."minecraft:pot_decorations" set value ["minecraft:brick","minecraft:brick","minecraft:brick","minecraft:brick"]
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run data modify storage tcc:temp root.item.components."minecraft:pot_decorations"[2] set from storage tcc:temp root.barrel_data[1][{Slot:3b}].id
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run data modify storage tcc:temp root.item.components."minecraft:pot_decorations"[0] set from storage tcc:temp root.barrel_data[1][{Slot:11b}].id
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run data modify storage tcc:temp root.item.components."minecraft:pot_decorations"[3] set from storage tcc:temp root.barrel_data[1][{Slot:13b}].id
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run data modify storage tcc:temp root.item.components."minecraft:pot_decorations"[1] set from storage tcc:temp root.barrel_data[1][{Slot:21b}].id
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] if data storage tcc:temp root.barrel_data[1][{Slot:11b}] if data storage tcc:temp root.barrel_data[1][{Slot:13b}] if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.trigger_advancement set value 1b

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage tcc:temp root.item
tag @s add tcc.pottery_table.assembled_output