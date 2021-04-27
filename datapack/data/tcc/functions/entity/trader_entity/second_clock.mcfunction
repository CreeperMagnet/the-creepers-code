############################################################
# Description: Second-clocks a living entity with a wandering trader base
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=!tcc.snail] run function tcc:entity/trader_entity/second_clock_illager
effect give @s invisibility 100 0 true
execute if entity @s[tag=tcc.snail] run function tcc:entity/snail/second_clock
data remove entity @s[tag=!tcc.witch_trader] Offers.Recipes
data modify entity @s[predicate=tcc:wandering_trader_night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[predicate=!tcc:wandering_trader_night,nbt=!{DeathTime:19s}] DeathTime set value 19s
