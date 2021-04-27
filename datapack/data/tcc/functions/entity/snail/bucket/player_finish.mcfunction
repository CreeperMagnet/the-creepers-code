############################################################
# Description: Replaces items and plays sounds for gobblerift bonemealing
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
loot replace entity @s weapon.mainhand loot tcc:items/snail_in_a_bucket
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.snail] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:entity/snail/bucket/finish
item entity @s weapon.mainhand modify tcc:copy_nbt
