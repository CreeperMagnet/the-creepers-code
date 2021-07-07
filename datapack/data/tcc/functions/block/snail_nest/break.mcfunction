############################################################
# Description: Commands to break a snail nest
# Creator: CreeperMagnet_
############################################################

loot spawn ~ ~ ~ loot tcc:blocks/snail_nest
particle minecraft:item structure_block{CustomModelData:330003} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}
playsound tcc:entity.snail.hurt neutral @a[distance=..16]
kill @s
