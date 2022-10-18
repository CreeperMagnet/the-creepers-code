############################################################
# Kills item for soul seer
############################################################

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/soul_seer
kill @s