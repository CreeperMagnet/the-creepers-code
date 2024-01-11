# Commands to run every ten seconds

## As entities
execute as @e[type=#tcc:technical/ten_second_clock,tag=tcc.ten_second_clock] at @s run function tcc:entity/ten_second_clock

## Wandering Witch Spawning Clock
execute if entity @p run function tcc:entity/wandering_witch/spawning/clock

schedule function tcc:technical/ten_second_clock 10s replace
