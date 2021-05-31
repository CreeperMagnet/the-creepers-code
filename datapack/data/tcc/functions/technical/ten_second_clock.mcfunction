############################################################
# Description: Commands to run every ten seconds
# Creator: CreeperMagnet_
############################################################

## Charged Creepers
execute as @e[type=creeper,tag=!global.ignore,predicate=tcc:chance/three_fifths,nbt={powered:1b},nbt=!{Silent:1b}] at @s run playsound tcc:entity.creeper.charged_ambient hostile @a[distance=..16]

execute as @e[tag=tcc.block] at @s run function tcc:block/ten_second_clock

schedule function tcc:technical/ten_second_clock 10s replace
