############################################################
# Randomizes the rotation of the conductor if it's down/up
############################################################

execute store result score #temp_0 tcc.dummy run random value 1..4
execute if score #temp_0 tcc.dummy matches 1 rotated 0 ~ run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 tcc.dummy matches 2 rotated 90 ~ run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 tcc.dummy matches 3 rotated 180 ~ run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 tcc.dummy matches 4 rotated 270 ~ run function tcc:block/soul_conductor/find_path/start/check_sculk