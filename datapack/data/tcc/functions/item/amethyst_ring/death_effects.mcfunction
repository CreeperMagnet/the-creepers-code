############################################################
# Description: Make the items glow when you die with an amethyst ring
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy2
execute store result score @s tcc.dummy2 if entity @e[type=item,distance=..10,nbt={Age:0s},nbt=!{Glowing:1b},tag=!global.ignore]
execute as @e[type=item,sort=nearest,distance=..10,nbt={Age:0s},nbt=!{Glowing:1b},tag=!global.ignore] run function tcc:item/amethyst_ring/edit_item
execute unless entity @s[scores={tcc.dummy2=0}] run function tcc:item/amethyst_ring/modify_durability
