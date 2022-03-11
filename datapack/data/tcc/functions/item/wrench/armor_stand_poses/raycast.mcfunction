############################################################
# Finds the armor stand you're looking at
############################################################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=armor_stand,tag=tcc.armor_stand_with_arms] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run function tcc:item/wrench/armor_stand_poses/as_entity
execute if entity @s[distance=..5,tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:item/wrench/armor_stand_poses/raycast
