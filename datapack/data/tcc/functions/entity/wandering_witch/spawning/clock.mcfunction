# A clock for spawning a wandering witch

scoreboard players remove #wandering_witch_timer tcc.dummy 1
execute if predicate tcc:entity/wandering_witch_night unless score #wandering_witch_timer tcc.dummy matches 1.. run function tcc:entity/wandering_witch/spawning/clock_end