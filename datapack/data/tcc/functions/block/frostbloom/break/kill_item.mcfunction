# Kills item for frostbloom

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/frostbloom
kill @s