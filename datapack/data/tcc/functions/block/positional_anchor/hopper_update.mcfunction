############################################################
# Description: Commands to run when a player places a hopper
# Creator: CreeperMagnet_
############################################################

execute as @e[type=armor_stand,sort=arbitrary,distance=..7,tag=tcc.positional_anchor] at @s run function tcc:block/positional_anchor/ten_second_clock
advancement revoke @s only tcc:technical/block/place_hopper
