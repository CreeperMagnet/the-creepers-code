# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:beetroots
particle minecraft:block minecraft:beetroots[age=3] ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16]
loot spawn ~ ~ ~ loot tcc:blocks/boomerang/beetroots