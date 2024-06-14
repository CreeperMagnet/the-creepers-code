# Commands to kill items from a pottery table

execute store result score #count tcc.dummy run data get entity @s Item.count
loot replace entity @s contents loot tcc:blocks/pottery_table