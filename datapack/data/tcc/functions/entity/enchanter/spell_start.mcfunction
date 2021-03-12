############################################################
# Description: Makes animations and such for a spell-casting cycle
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy2 0
tag @s add tcc.trader_entity.still
tag @s add tcc.enchanter.casting
attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 slowness -100 add
data modify entity @s HandItems[0].tag.CustomModelData set value 330003