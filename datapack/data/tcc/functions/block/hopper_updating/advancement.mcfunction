############################################################
# Description: Commands to run when a player places a hopper
# Creator: CreeperMagnet_
############################################################

execute as @e[type=armor_stand,distance=..7,tag=tcc.positional_anchor] at @s run function tcc:block/hopper_updating/fill
execute as @e[type=armor_stand,distance=..7,tag=tcc.jewelry_table] at @s run function tcc:block/hopper_updating/fill
advancement revoke @s only tcc:technical/block/place_hopper
