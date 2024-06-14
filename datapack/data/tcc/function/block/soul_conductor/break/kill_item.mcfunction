# Commands to kill soul conductor item

execute store result score #count tcc.dummy run data get entity @s Item.count
loot replace entity @s contents loot tcc:blocks/soul_conductor