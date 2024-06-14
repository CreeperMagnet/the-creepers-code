# Commands to run when a player places a hopper

scoreboard players reset #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run attribute @s minecraft:player.block_interaction_range get 1.0
scoreboard players add #temp_0 tcc.dummy 2
data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players get #temp_0 tcc.dummy
function tcc:block/hopper_updating/distance_macro with storage tcc:temp root.macro_input
advancement revoke @s only tcc:technical/placed_block/hopper
