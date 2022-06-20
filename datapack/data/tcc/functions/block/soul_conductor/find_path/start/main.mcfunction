############################################################
# Checks what orientation of conductor you have
############################################################

execute if block ~ ~ ~ dropper[facing=north] rotated 0 0 run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ dropper[facing=east] rotated 90 0 run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ dropper[facing=south] rotated 180 0 run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ dropper[facing=west] rotated 270 0 run function tcc:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ dropper[facing=down] rotated 0 -90 run function tcc:block/soul_conductor/find_path/start/randomize_rotation
execute if block ~ ~ ~ dropper[facing=up] rotated 0 90 run function tcc:block/soul_conductor/find_path/start/randomize_rotation