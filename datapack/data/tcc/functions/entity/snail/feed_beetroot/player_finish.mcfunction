############################################################
# Description: Commands to feed a snail a beet
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
item entity @s[gamemode=!creative] weapon.mainhand modify tcc:reduce_count
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.snail] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:entity/snail/feed_beetroot/finish
