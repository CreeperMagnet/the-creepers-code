# Second-clocks a living entity with a wandering trader base

effect give @s minecraft:invisibility infinite 0 true
execute if entity @s[tag=tcc.illager] run function tcc:entity/illager/second_clock
execute if entity @s[tag=tcc.snail] run function tcc:entity/snail/second_clock
execute if entity @s[tag=tcc.sprouter] run function tcc:entity/sprouter/second_clock
data modify entity @s[tag=!tcc.wandering_witch] DespawnDelay set value 2147483647
data modify entity @s[tag=!tcc.has_trades] Offers.Recipes set value []
data modify entity @s[nbt=!{NoAI:1b},predicate=tcc:time_check/night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[nbt=!{NoAI:1b},predicate=!tcc:time_check/night,nbt=!{DeathTime:19s}] DeathTime set value 19s
execute if data entity @s[nbt=!{NoAI:1b}] HandItems[0].id run data modify entity @s HandItems[0].components."minecraft:custom_data".fix_milk_bucket set value "idk why this works but it does"
execute if entity @s[predicate=tcc:random_chance/0.1,tag=!tcc.silent] run function tcc:entity/trader_entity/sounds/ambient
