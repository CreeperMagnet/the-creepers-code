############################################################
# Description: Second-clocks a living entity with a wandering trader base
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=!tcc.snail] run function tcc:entity/trader_entity/second_clock_illager
execute if entity @s[tag=tcc.snail] run function tcc:entity/snail/second_clock
effect give @s invisibility 100 0 true
data remove entity @s[tag=!tcc.witch_trader] Offers.Recipes
data modify entity @s[predicate=tcc:wandering_trader_night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[predicate=!tcc:wandering_trader_night,nbt=!{DeathTime:19s}] DeathTime set value 19s
execute if entity @s[tag=!tcc.snail] if score #difficulty tcc.dummy matches 0 run tp ~ -1000 ~
data modify entity @s[nbt={HurtTime:0s}] HandItems[0].tag.display.color set value 16777214
