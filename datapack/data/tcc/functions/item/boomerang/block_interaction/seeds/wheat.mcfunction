setblock ~ ~ ~ minecraft:wheat
particle block wheat[age=7] ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16]
loot spawn ~ ~ ~ loot tcc:blocks/boomerang/wheat