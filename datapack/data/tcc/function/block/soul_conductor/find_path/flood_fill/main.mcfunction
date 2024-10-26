# Finds the proper path for the soul conductor

# Set dispenser so it can't go backwards
setblock ~ ~ ~ minecraft:dispenser{CustomName:'{"translate":"tcc:soul_conductor_floodfill"}'}

# Set limit
execute store result score #soul_conductor_unfinished tcc.dummy run scoreboard players remove #soul_conductor_limit_count tcc.dummy 1

# Randomization
execute store success score #soul_conductor_lr_random tcc.dummy if predicate tcc:random_chance/0.5
execute store success score #soul_conductor_exit_random tcc.dummy if predicate tcc:random_chance/0.5

# Exits
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:dropper[facing=down,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~-1.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore rotated ~ 0 run function tcc:block/soul_conductor/find_path/finish

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 1 if score #soul_conductor_exit_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/exits/north
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 1 if score #soul_conductor_exit_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/exits/east
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 0 if score #soul_conductor_exit_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/exits/south
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 0 if score #soul_conductor_exit_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/exits/west

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dropper[facing=up,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~0.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore rotated ~ 0 run function tcc:block/soul_conductor/find_path/finish

execute if block ~ ~1 ~ #tcc:soul_conductor_ignore run particle minecraft:sculk_soul ~ ~0.6 ~ 0.25 0 0.25 0 2 normal

# Down
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ 90 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Forward
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Randomly choose between L/R
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 0 run function tcc:block/soul_conductor/find_path/flood_fill/right_first
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 if score #soul_conductor_lr_random tcc.dummy matches 1 run function tcc:block/soul_conductor/find_path/flood_fill/left_first

# Up
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~ -90 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function tcc:block/soul_conductor/find_path/flood_fill/main
# Backwards
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 rotated ~180 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function tcc:block/soul_conductor/find_path/flood_fill/main