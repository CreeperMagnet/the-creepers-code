############################################################
# Description: SUPER bonemeals a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

playsound minecraft:item.bone_meal.use neutral @a[distance=..16]
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.2 10
function tcc:block/gobblerift/grow
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0
