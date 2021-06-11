############################################################
# Description: Scheduled commands to clean up the remains of the monument
# Creator: CreeperMagnet_
############################################################

execute as @e[type=marker,tag=tcc.cleanup.monument] at @s run function tcc:worldgen/ocean_monument_edits/modify/finish
