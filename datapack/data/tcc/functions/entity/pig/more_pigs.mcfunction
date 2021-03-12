############################################################
# Description: MORE PIGS! MORE MORE MORE!!!
# Creator: CreeperMagnet_
############################################################

execute as @e[type=pig,nbt={Age:-24000},limit=1,tag=!global.ignore] at @s run summon pig ~ ~ ~ {Age:-23999}
execute as @e[type=pig,nbt={Age:-24000},limit=1,tag=!global.ignore,predicate=tcc:chance/one_half] at @s run summon pig ~ ~ ~ {Age:-23999}
