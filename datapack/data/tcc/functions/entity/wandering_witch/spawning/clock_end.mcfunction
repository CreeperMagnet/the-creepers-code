############################################################
# Resets the clock to 60x 10 seconds and tries to spawn a witch
############################################################

execute unless score #wandering_witch_attempts tcc.dummy matches 1.. if predicate tcc:chance/one_fourth as @r[predicate=tcc:location/valid_wandering_witch_dimension] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 1 if predicate tcc:chance/one_half as @r[predicate=tcc:location/valid_wandering_witch_dimension] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 2 unless predicate tcc:chance/one_fourth as @r[predicate=tcc:location/valid_wandering_witch_dimension] at @s run function tcc:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts tcc.dummy matches 3.. as @r[predicate=tcc:location/valid_wandering_witch_dimension] at @s run function tcc:entity/wandering_witch/spawning/main
scoreboard players set #wandering_witch_timer tcc.dummy 180
scoreboard players add #wandering_witch_attempts tcc.dummy 1