# Functions to run when a player names an entity that isn't supposed to display a nametag

scoreboard players reset #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run attribute @s minecraft:entity_interaction_range get 1.0
data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 tcc.dummy 2
function tcc:entity/no_nametag/distance_macro with storage tcc:temp root.macro_input

advancement revoke @s only tcc:technical/player_interacted_with_entity/name_no_nametag_entity