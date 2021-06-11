############################################################
# Description: Replaces items and plays sounds for snail bucketing
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.snail,limit=1,sort=nearest] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:entity/snail/bucket/finish
loot replace entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] weapon.mainhand loot tcc:technical/snail_bucket_copy_nbt
execute unless entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run loot give @s loot tcc:technical/snail_bucket_copy_nbt
item modify entity @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] weapon.mainhand tcc:reduce_count
