# Kills item for flower pot

execute store result score #count tcc.dummy run data get entity @s Item.count
$loot replace entity @s contents loot tcc:blocks/flower_pot/$(type)