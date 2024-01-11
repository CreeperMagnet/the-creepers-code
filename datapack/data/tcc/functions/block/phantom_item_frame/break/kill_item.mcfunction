# Kills item for phantom item frame

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/phantom_item_frame
kill @s