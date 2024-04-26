# Finds the snail you're looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=minecraft:wandering_trader,tag=tcc.snail,limit=1,sort=nearest] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run return run function tcc:entity/snail/interact/as_entity
scoreboard players remove @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:entity/snail/interact/raycast