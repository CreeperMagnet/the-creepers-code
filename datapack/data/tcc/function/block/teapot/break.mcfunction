# Commands to break a teapot

particle minecraft:item{item:{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":330086}}} ~ ~1 ~ 0.3 0.4 0.3 0.05 20 normal
execute on passengers run kill @s
playsound tcc:block.teapot.break block @a[distance=..16]
kill @s
loot spawn ~ ~ ~ loot tcc:items/teapot
