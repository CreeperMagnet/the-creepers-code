############################################################
# Description: Makes feeding a chicken peculiar berries work properly
# Creator: CreeperMagnet_
############################################################

data merge entity @s {DeathLootTable:"tcc:entities/peculiar_chicken",Tags:["tcc.peculiar_chicken"]}
particle minecraft:witch ~ ~0.5 ~ 0.2 0.2 0.2 1 100 normal
playsound tcc:item.peculiar_berries.feed voice @a[distance=..16]
