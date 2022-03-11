############################################################
# Finds the player an illager is looking at
############################################################

execute if entity @a[distance=..2,nbt=!{Health:0.0f}] run tag @s add tcc.has_line_of_sight
execute if entity @s[distance=..16,tag=!tcc.has_line_of_sight] if block ^ ^ ^0.05 #tcc:seethrough positioned ^ ^ ^0.05 run function tcc:entity/illager/line_of_sight_raycast
