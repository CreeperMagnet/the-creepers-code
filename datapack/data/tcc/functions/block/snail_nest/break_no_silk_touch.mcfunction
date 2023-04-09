############################################################
# Commands to break a snail nest with no silk touch
############################################################

loot spawn ~ ~ ~ loot tcc:blocks/snail_nest
particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}
playsound tcc:entity.snail.hurt neutral @a[distance=..16]