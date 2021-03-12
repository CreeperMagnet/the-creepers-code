############################################################
# Description: Finds the dyeable block/painting you are looking at
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.paintbrush_raycaster
scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1

## Add tags depending on what action you're doing
execute if entity @s[scores={tcc.dummy=..499}] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=painting,tag=!global.ignore] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0,dz=0,dy=0] run tag @p[tag=tcc.paintbrush_raycaster] add tcc.tag
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=shulker,tag=!global.ignore] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0,dz=0,dy=0] run tag @p[tag=tcc.paintbrush_raycaster] add tcc.tag.paint_shulker
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag,tag=!tcc.tag.paint_shulker] unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz unless entity @e[tag=global.ignore,type=armor_stand,dx=0,dz=0,dy=1] if block ~ ~ ~ #tcc:paintbrush/dyeable run tag @s add tcc.tag.paint_block

# Run painting code (doesn't need dye checks)
execute if entity @s[tag=tcc.tag] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=painting,tag=!global.ignore] positioned ~-0.99 ~0.99 ~-0.99 at @s[dx=0,dz=0,dy=0] run function tcc:item/paintbrush/painting_cycle/discern

## If shulker or block, find dye color
execute unless entity @s[tag=!tcc.tag.paint_shulker,tag=!tcc.tag.paint_block] run function tcc:item/paintbrush/find_dye

## Run paint block and shulker code?
execute if entity @s[tag=tcc.tag.paint_shulker] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=shulker,tag=!global.ignore] positioned ~-0.99 ~0.99 ~-0.99 at @s[dx=0,dz=0,dy=0] run function tcc:item/paintbrush/color_shulker
execute if entity @s[tag=tcc.tag.paint_block] unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz unless entity @e[tag=global.ignore,type=armor_stand,dx=0,dz=0,dy=1] if block ~ ~ ~ #tcc:paintbrush/dyeable run function tcc:item/paintbrush/color_block

## Here we go again...
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag,tag=!tcc.tag.paint_shulker,tag=!tcc.tag.paint_block] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:item/paintbrush/raycast
tag @s remove tcc.paintbrush_raycaster
tag @s remove tcc.tag
tag @s remove tcc.tag.paint_shulker
tag @s remove tcc.tag.paint_block
