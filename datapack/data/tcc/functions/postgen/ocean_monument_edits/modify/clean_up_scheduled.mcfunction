############################################################
# Scheduled commands to clean up the remains of the monument
############################################################

execute as @e[type=marker,tag=tcc.cleanup.monument] at @s run function tcc:postgen/ocean_monument_edits/modify/finish
