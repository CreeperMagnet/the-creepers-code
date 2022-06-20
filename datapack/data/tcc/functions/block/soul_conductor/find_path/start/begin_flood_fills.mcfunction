############################################################
# Starts the flood filling process
############################################################

scoreboard players set #soul_conductor_limit tcc.dummy 1800
function tcc:block/soul_conductor/find_path/flood_fill/main
function tcc:block/soul_conductor/find_path/flood_fill/undo
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 run playsound tcc:block.soul_conductor.transport_player_fail block @a[distance=..16]
execute if score #soul_conductor_limit tcc.dummy matches 0 run playsound tcc:block.soul_conductor.transport_player_fail block @a[distance=..16]