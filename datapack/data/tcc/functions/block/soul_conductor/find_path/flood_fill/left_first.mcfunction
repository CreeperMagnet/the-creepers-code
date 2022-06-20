############################################################
# Runs the left path first, then the right path
############################################################

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~-90 0 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~90 0 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main