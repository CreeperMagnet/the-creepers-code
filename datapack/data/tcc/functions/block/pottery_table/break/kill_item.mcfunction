# Commands to kill items from a pottery table

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/pottery_table
kill @s