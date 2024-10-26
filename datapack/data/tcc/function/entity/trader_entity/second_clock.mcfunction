# Second-clocks a living entity with a wandering trader base

execute if entity @s[predicate=tcc:random_chance/0.1,tag=!tcc.silent] run function tcc:entity/trader_entity/sounds/ambient

execute if entity @s[tag=tcc.illager] run return run function tcc:entity/illager/second_clock
execute if entity @s[tag=tcc.snail] run return run function tcc:entity/snail/second_clock
execute if entity @s[tag=tcc.sprouter] run function tcc:entity/sprouter/second_clock