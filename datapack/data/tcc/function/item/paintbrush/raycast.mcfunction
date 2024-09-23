# Finds the dyeable block/painting/shulker you are looking at

## Color entities & block raycast
execute positioned ~-0.01 ~-0.99 ~-0.01 as @n[dx=0,type=!#tcc:intangible,tag=!tcc.paintbrush.raycaster] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run return run execute if entity @s[type=#tcc:paintbrush_affected] run function tcc:item/paintbrush/as_entity

## Color blocks
execute if entity @s[tag=!tcc.tag] positioned ^ ^ ^0.01 align xyz if block ~ ~ ~ #tcc:paintbrush/dyeable run return run function tcc:item/paintbrush/color_block

## Here we go again...
scoreboard players remove @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=!tcc.tag] positioned ^ ^ ^0.01 if predicate tcc:location_check/paintbrush_raycast_ignore run function tcc:item/paintbrush/raycast
