# Kills item for positional anchor

execute store result score #count tcc.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot tcc:blocks/positional_anchor
kill @s