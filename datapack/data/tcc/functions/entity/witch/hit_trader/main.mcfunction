############################################################
# You get PUNISHED for hitting the witch whilst it's willing to trade (advancement function)
############################################################

execute as @e[type=wandering_trader,tag=tcc.witch_trader,nbt={HurtTime:10s},limit=1] at @s run function tcc:entity/witch/hit_trader/as_trader
effect give @s poison 120 1 false
advancement revoke @s only tcc:technical/player_hurt_entity/hit_witch_trader