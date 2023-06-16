############################################################
# Finds the dyeable block/painting/shulker you are looking at
############################################################

## Color entities
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=#tcc:paintbrush_affected,tag=!smithed.entity,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function tcc:item/paintbrush/as_entity

## Color blocks
execute if entity @s[tag=!tcc.tag] positioned ^ ^ ^0.01 align xyz if block ~ ~ ~ #tcc:paintbrush/dyeable run function tcc:item/paintbrush/color_block

## Here we go again...
execute if entity @s[distance=..5.5,tag=!tcc.tag] if block ^ ^ ^0.01 #tcc:paintbrush/raycast_ignore positioned ^ ^ ^0.01 run function tcc:item/paintbrush/raycast
