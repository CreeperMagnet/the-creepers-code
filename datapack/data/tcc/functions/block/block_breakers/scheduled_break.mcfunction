############################################################
# Description: Tells what type of block breaker is powered
# Creator: CreeperMagnet_
############################################################

execute as @e[tag=tcc.scheduled.block_breaker,type=armor_stand] at @s run function tcc:block/block_breakers/scheduled_break_rotation
