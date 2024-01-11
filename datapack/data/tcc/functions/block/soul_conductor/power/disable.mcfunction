# Changes texture for a soul conductor

execute if block ~ ~ ~ minecraft:dropper[facing=north] run data modify entity @s item.tag.CustomModelData set value 330013
execute if block ~ ~ ~ minecraft:dropper[facing=east] run data modify entity @s item.tag.CustomModelData set value 330014
execute if block ~ ~ ~ minecraft:dropper[facing=south] run data modify entity @s item.tag.CustomModelData set value 330015
execute if block ~ ~ ~ minecraft:dropper[facing=west] run data modify entity @s item.tag.CustomModelData set value 330016 
execute if block ~ ~ ~ minecraft:dropper[facing=up] run data modify entity @s item.tag.CustomModelData set value 330017
execute if block ~ ~ ~ minecraft:dropper[facing=down] run data modify entity @s item.tag.CustomModelData set value 330018
tag @s add tcc.soul_conductor.powered