# Kills item for egg

execute store result score #count tcc.dummy run data get entity @s Item.count
loot replace entity @s contents loot tcc:blocks/sprouter_egg