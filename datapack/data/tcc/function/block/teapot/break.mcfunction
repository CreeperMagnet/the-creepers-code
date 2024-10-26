# Commands to break a teapot

particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/teapot/empty"}}} ~ ~1 ~ 0.3 0.4 0.3 0.05 20 normal
execute on passengers run kill @s
playsound tcc:block.teapot.break block @a[distance=..16]
kill @s
loot spawn ~ ~ ~ loot tcc:items/teapot
