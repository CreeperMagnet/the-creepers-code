############################################################
# Commands to run when a player places a hopper
############################################################

execute as @e[type=armor_stand,distance=..7,tag=tcc.prevents_hoppers] at @s run function tcc:block/hopper_updating/fill
advancement revoke @s only tcc:technical/placed_block/hopper
