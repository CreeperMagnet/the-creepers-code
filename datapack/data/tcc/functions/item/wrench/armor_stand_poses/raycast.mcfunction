# Finds the armor stand you're looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=minecraft:armor_stand,tag=tcc.armor_stand_with_arms] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run return run function tcc:item/wrench/armor_stand_poses/as_entity
scoreboard players remove @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:item/wrench/armor_stand_poses/raycast