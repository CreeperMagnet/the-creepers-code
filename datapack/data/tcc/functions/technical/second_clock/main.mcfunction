############################################################
# Commands to run every second
############################################################

## Gamerule check
execute store result score #difficulty tcc.dummy run difficulty

## Entity commands
execute as @e[type=#tcc:technical/second_clock] at @s run function tcc:technical/second_clock/as_entity

## Player second_clock
execute as @a at @s run function tcc:entity/player/second_clock

## Reschedule
schedule function tcc:technical/second_clock/main 1s replace
