############################################################
# Second-clocks a living entity with a wandering trader base
############################################################

execute if entity @s[tag=tcc.illager] run function tcc:entity/illager/second_clock
execute if entity @s[tag=tcc.snail] run function tcc:entity/snail/second_clock
execute if entity @s[tag=tcc.witch_trader] run function tcc:entity/witch/second_clock_trader
execute if entity @s[tag=tcc.gobblerift] run function tcc:block/gobblerift/second_clock
data remove entity @s[tag=!tcc.witch_trader] Offers.Recipes
data modify entity @s[nbt=!{NoAI:1b},predicate=tcc:entity/wandering_trader_night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[nbt=!{NoAI:1b},predicate=!tcc:entity/wandering_trader_night,nbt=!{DeathTime:19s}] DeathTime set value 19s
data modify entity @s[nbt=!{NoAI:1b}] HandItems[0].tag.fix_milk_bucket set value "idk why this works but it does"
execute if entity @s[predicate=tcc:chance/three_twentieths,tag=!tcc.silent] run function tcc:entity/trader_entity/sounds/ambient
