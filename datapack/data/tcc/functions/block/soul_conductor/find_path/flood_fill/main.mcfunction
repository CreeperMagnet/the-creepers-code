############################################################
# Finds the proper path for the soul conductor
############################################################

# Set stone so it can't go backwards
setblock ~ ~ ~ dispenser{Lock:"soul_conductor_floodfill"}

# Set limit
execute store result score #soul_conductor_unfinished tcc.dummy run scoreboard players remove #soul_conductor_limit tcc.dummy 1

# Randomization
execute store success score #soul_conductor_lr_random tcc.dummy if predicate tcc:chance/one_half
execute store success score #soul_conductor_exit_random tcc.dummy if predicate tcc:chance/one_half

# Exits
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=down]{Lock:"§soul_conductor\\uF001"} unless entity @s[dx=0] positioned ~ ~-2 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore if block ~ ~1 ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz if score #soul_conductor_lr_random tcc.dummy matches 1 if score #soul_conductor_exit_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/exits/north
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz if score #soul_conductor_lr_random tcc.dummy matches 1 if score #soul_conductor_exit_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/exits/east
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz if score #soul_conductor_lr_random tcc.dummy matches 0 if score #soul_conductor_exit_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/exits/south
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz if score #soul_conductor_lr_random tcc.dummy matches 0 if score #soul_conductor_exit_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/exits/west

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 align xyz positioned ~ ~1 ~ if block ~ ~ ~ dropper[facing=up]{Lock:"§soul_conductor\\uF001"} unless entity @s[dx=0] positioned ~ ~1 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore if block ~ ~1 ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish

execute if block ~ ~1 ~ #tcc:soul_conductor_ignore run particle sculk_soul ~ ~0.6 ~ 0.25 0 0.25 0 2 normal

# Down
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ 90 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Forward
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ 0 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Randomly choose between L/R
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/right_first
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/left_first

# Up
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ -90 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Backwards
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~180 0 positioned ^ ^ ^1 if block ^ ^ ^ sculk run function tcc:block/soul_conductor/find_path/flood_fill/main