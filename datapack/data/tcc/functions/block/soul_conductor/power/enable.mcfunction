############################################################
# Changes texture for a soul conductor
############################################################

execute if block ~ ~ ~ dropper[facing=north] run data modify entity @s item.tag.CustomModelData set value 330007
execute if block ~ ~ ~ dropper[facing=east] run data modify entity @s item.tag.CustomModelData set value 330008
execute if block ~ ~ ~ dropper[facing=south] run data modify entity @s item.tag.CustomModelData set value 330009
execute if block ~ ~ ~ dropper[facing=west] run data modify entity @s item.tag.CustomModelData set value 330010
execute if block ~ ~ ~ dropper[facing=up] run data modify entity @s item.tag.CustomModelData set value 330011
execute if block ~ ~ ~ dropper[facing=down] run data modify entity @s item.tag.CustomModelData set value 330012
tag @s remove tcc.soul_conductor.powered