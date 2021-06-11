############################################################
# Description: Feeds a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

particle minecraft:item minecraft:rabbit_stew ~ ~1.35 ~ 0.1 0.1 0.1 0 2 normal
particle minecraft:heart ~ ~1 ~ 0.25 0.5 0.25 0 5 normal
tag @s add tcc.gobblerift.in_love
tag @s remove tcc.gobblerift.can_love
execute if entity @e[type=minecraft:wandering_trader,tag=tcc.gobblerift.in_love,sort=nearest,distance=0.00001..1] run function tcc:block/gobblerift/feed_stew/set_love
execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.swallow_favorite block @a[distance=..16]
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0