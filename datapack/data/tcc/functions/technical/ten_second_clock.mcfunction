############################################################
# Description: Commands to run every ten seconds
# Creator: CreeperMagnet_
############################################################

## Charged Creepers
execute as @e[type=creeper,tag=!global.ignore,predicate=tcc:chance/three_fifths,nbt={powered:1b},nbt=!{Silent:1b}] at @s run playsound tcc:entity.creeper.charged_ambient hostile @a[distance=..16]

execute as @e[tag=tcc.block] at @s run function tcc:block/ten_second_clock

execute as @e[type=trident,tag=tcc.trident] run data modify entity @s life set value -32767s

execute unless data storage tcc:storage root.gamerules{generateMonuments:0b} as @a[predicate=tcc:in_ocean] at @s positioned ~ ~-64 ~ unless entity @e[type=marker,tag=tcc.monument,distance=..128] positioned ~ ~64 ~ run function tcc:worldgen/ocean_monument_edits/detect/check_storage

schedule function tcc:technical/ten_second_clock 10s replace
