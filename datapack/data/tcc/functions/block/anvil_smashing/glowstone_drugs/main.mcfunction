############################################################
# Description: Makes things glow from smashing glowstone
# Creator: CreeperMagnet_
############################################################

execute as @a[gamemode=!spectator,distance=..7] run function tcc:block/anvil_smashing/glowstone_drugs/make_player_high
effect give @e[type=!player,distance=..7,predicate=tcc:global.ignore,tag=!tcc.snail,tag=!tcc.gobblerift] glowing 60 0
particle minecraft:item minecraft:glowstone_dust ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
