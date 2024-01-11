# Commands to run when a player places a hopper

execute as @e[type=minecraft:item_display,distance=..7,tag=tcc.prevents_hoppers] at @s positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill
advancement revoke @s only tcc:technical/placed_block/hopper
