############################################################
# Commands to break a teapot
############################################################

particle minecraft:item minecraft:structure_block{CustomModelData:330086} ~ ~1 ~ 0.3 0.4 0.3 0.05 20 normal
execute on passengers run kill @s
playsound minecraft:entity.armor_stand.break block @a[distance=..16]
kill @s
loot spawn ~ ~ ~ loot tcc:items/teapot
