# Kills item for soul seer

execute store result score #count tcc.dummy run data get entity @s Item.count
loot replace entity @s contents loot tcc:blocks/soul_seer