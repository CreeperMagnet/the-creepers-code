############################################################
# Commands to kill soul conductor item
############################################################

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/soul_conductor
kill @s