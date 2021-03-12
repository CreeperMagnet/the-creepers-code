############################################################
# Description: Commands to run every ten seconds
# Creator: CreeperMagnet_
############################################################

execute as @e[sort=arbitrary,tag=tcc.block] at @s run function tcc:block/ten_second_clock
schedule function tcc:technical/ten_second_clock 10s replace
