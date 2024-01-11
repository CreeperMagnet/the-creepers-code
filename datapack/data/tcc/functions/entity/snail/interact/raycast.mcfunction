# Finds the snail you're looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=minecraft:wandering_trader,tag=tcc.snail,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run return run function tcc:entity/snail/interact/as_entity
execute if entity @s[distance=..5,tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:entity/snail/interact/raycast
