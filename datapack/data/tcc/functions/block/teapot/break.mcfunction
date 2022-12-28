############################################################
# Commands to break a teapot
############################################################

particle minecraft:item minecraft:structure_block{CustomModelData:330086} ~ ~1.5 ~ 0.3 0.4 0.3 0.05 20 normal
kill @s[predicate=tcc:entity/in_vehicle]
tp @s ~ ~-100000 ~
loot spawn ~ ~ ~ loot tcc:items/teapot
