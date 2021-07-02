############################################################
# Description: Bonemeals a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s tcc.dummy2 4
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.2 10
playsound minecraft:item.bone_meal.use neutral @a[distance=..16]
execute if entity @s[scores={tcc.dummy2=75..}] run function tcc:block/gobblerift/grow
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0
