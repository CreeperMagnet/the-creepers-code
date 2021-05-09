############################################################
# Description: Makes you high from glowstone
# Creator: CreeperMagnet_
############################################################

effect give @a[gamemode=!spectator,distance=..7] haste 180 1
effect give @a[gamemode=!spectator,distance=..7] nausea 180 1
effect give @a[gamemode=!spectator,distance=..7] glowing 60 0
effect give @e[type=!player,distance=..7,predicate=tcc:global.ignore,tag=!tcc.snail,tag=!tcc.gobblerift] glowing 60 0
particle minecraft:item minecraft:glowstone_dust ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
