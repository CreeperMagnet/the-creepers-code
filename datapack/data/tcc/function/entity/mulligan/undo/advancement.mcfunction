# Runs when a player renames Mulligan to something that isn't his name

scoreboard players reset #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run attribute @s minecraft:entity_interaction_range get 1.0
data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 tcc.dummy 2
function tcc:entity/mulligan/undo/distance_macro with storage tcc:temp root.macro_input

advancement revoke @s only tcc:technical/player_interacted_with_entity/name_mulligan_something_else