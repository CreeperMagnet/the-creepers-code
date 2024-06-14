# Resets the clock and tries to spawn a witch

execute unless score #wandering_witch_attempts tcc.dummy matches 1.. if predicate tcc:random_chance/0.25 as @r[predicate=tcc:location_check/in_overworld] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 1 if predicate tcc:random_chance/0.5 as @r[predicate=tcc:location_check/in_overworld] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 2.. unless predicate tcc:random_chance/0.25 as @r[predicate=tcc:location_check/in_overworld] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 10.. as @r[predicate=tcc:location_check/in_overworld] at @s run function tcc:entity/wandering_witch/spawning/main
scoreboard players set #wandering_witch_timer tcc.dummy 270
scoreboard players add #wandering_witch_attempts tcc.dummy 1