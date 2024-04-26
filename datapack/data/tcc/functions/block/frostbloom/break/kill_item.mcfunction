# Kills item for frostbloom

execute store result score #count tcc.dummy run data get entity @s Item.count
loot replace entity @s contents loot tcc:blocks/frostbloom