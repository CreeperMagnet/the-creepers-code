############################################################
# Sets the status of a painting
############################################################

scoreboard players set @s tcc.dummy 0

# 1x1 paintings
execute unless entity @s[nbt=!{variant:"minecraft:alban"},nbt=!{variant:"minecraft:aztec"},nbt=!{variant:"minecraft:aztec2"},nbt=!{variant:"minecraft:bomb"},nbt=!{variant:"minecraft:kebab"},nbt=!{variant:"minecraft:plant"},nbt=!{variant:"minecraft:wasteland"}] run function tcc:item/paintbrush/painting_cycle/1x1
# 1x2 paintings
execute unless entity @s[nbt=!{variant:"minecraft:graham"},nbt=!{variant:"minecraft:wanderer"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/1x2
# 2x1 paintings
execute unless entity @s[nbt=!{variant:"minecraft:courbet"},nbt=!{variant:"minecraft:creebet"},nbt=!{variant:"minecraft:pool"},nbt=!{variant:"minecraft:sea"},nbt=!{variant:"minecraft:sunset"}] run function tcc:item/paintbrush/painting_cycle/2x1
# 2x2 paintings
execute unless entity @s[nbt=!{variant:"minecraft:bust"},nbt=!{variant:"minecraft:match"},nbt=!{variant:"minecraft:skull_and_roses"},nbt=!{variant:"minecraft:stage"},nbt=!{variant:"minecraft:void"},nbt=!{variant:"minecraft:wither"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/2x2
# 4x3 paintings
execute unless entity @s[nbt=!{variant:"minecraft:donkey_kong"},nbt=!{variant:"minecraft:skeleton"}] run function tcc:item/paintbrush/painting_cycle/4x3
# 4x4 paintings
execute unless entity @s[nbt=!{variant:"minecraft:burning_skull"},nbt=!{variant:"minecraft:pigscene"},nbt=!{variant:"minecraft:pointer"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/4x4

playsound tcc:item.paintbrush.paint block @a[distance=..16]