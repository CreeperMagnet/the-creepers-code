# Functions to run every single tick

## Entity Ticking
execute as @e[type=#tcc:technical/tick,tag=tcc.tick] at @s run function tcc:entity/tick

## Player Tick
execute as @a at @s run function tcc:entity/player/tick/main
