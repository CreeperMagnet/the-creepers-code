############################################################
# Description: You get PUNISHED for hitting the witch whilst it's willing to trade (advancement function)
# Creator: Ellivers
############################################################

execute as @e[type=wandering_trader,tag=tcc.witch_trader,nbt={HurtTime:10s}] at @s run function tcc:entity/witch/switch_to_witch
effect give @s poison 120 1 false
advancement revoke @s only tcc:technical/entity/witch_trader_hit