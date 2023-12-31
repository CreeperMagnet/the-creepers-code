############################################################
# Changes texture for a soul conductor
############################################################

execute if block ~ ~ ~ dropper[facing=north] run data modify entity @s item.tag.CustomModelData set value 330013
execute if block ~ ~ ~ dropper[facing=east] run data modify entity @s item.tag.CustomModelData set value 330014
execute if block ~ ~ ~ dropper[facing=south] run data modify entity @s item.tag.CustomModelData set value 330015
execute if block ~ ~ ~ dropper[facing=west] run data modify entity @s item.tag.CustomModelData set value 330016 
execute if block ~ ~ ~ dropper[facing=up] run data modify entity @s item.tag.CustomModelData set value 330017
execute if block ~ ~ ~ dropper[facing=down] run data modify entity @s item.tag.CustomModelData set value 330018
tag @s add tcc.soul_conductor.powered