############################################################
# Finds the teapot you're looking at
############################################################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=wandering_trader,tag=tcc.teapot] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run function tcc:block/teapot/interact/as_entity/main
execute if entity @s[distance=..5,tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:block/teapot/interact/raycast