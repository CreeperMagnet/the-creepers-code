############################################################
# Commands to kill items from a jewelry table
############################################################

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/jewelry_table
kill @s