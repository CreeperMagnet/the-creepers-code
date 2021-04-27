############################################################
# Description: Commands to run if a snail is hurting in a specific biome
# Creator: CreeperMagnet_
############################################################

data modify entity @s HurtTime set value 9s
function tcc:entity/trader_entity/hurt
execute if entity @s[nbt={Health:1.0f}] run function tcc:entity/trader_entity/death/effects
execute store result entity @s Health float 1 run data get entity @s Health 0.9999999999
particle cloud ~ ~ ~ 0.5 0.5 0.5 0 10 force
