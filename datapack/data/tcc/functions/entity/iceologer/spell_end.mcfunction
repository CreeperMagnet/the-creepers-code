############################################################
# Description: Makes animations and such for a spell-casting cycle
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.trader_entity.still
tag @s remove tcc.iceologer.casting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
data modify entity @s HandItems[0].tag.CustomModelData set value 330009
execute if entity @s[tag=tcc.has_line_of_sight] run function tcc:entity/iceologer/spell_completed