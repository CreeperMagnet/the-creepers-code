# Changes texture for a soul conductor

execute if block ~ ~ ~ minecraft:dropper[facing=north] run data modify entity @s item.components."minecraft:custom_model_data" set value 330007
execute if block ~ ~ ~ minecraft:dropper[facing=east] run data modify entity @s item.components."minecraft:custom_model_data" set value 330008
execute if block ~ ~ ~ minecraft:dropper[facing=south] run data modify entity @s item.components."minecraft:custom_model_data" set value 330009
execute if block ~ ~ ~ minecraft:dropper[facing=west] run data modify entity @s item.components."minecraft:custom_model_data" set value 330010
execute if block ~ ~ ~ minecraft:dropper[facing=up] run data modify entity @s item.components."minecraft:custom_model_data" set value 330011
execute if block ~ ~ ~ minecraft:dropper[facing=down] run data modify entity @s item.components."minecraft:custom_model_data" set value 330012
tag @s remove tcc.soul_conductor.powered