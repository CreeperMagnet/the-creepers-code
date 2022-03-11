############################################################
# Sets the status of a painting
############################################################

# 1x1 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:alban"},nbt=!{Motive:"minecraft:aztec"},nbt=!{Motive:"minecraft:aztec2"},nbt=!{Motive:"minecraft:bomb"},nbt=!{Motive:"minecraft:kebab"},nbt=!{Motive:"minecraft:plant"},nbt=!{Motive:"minecraft:wasteland"}] run function tcc:item/paintbrush/painting_cycle/1x1
# 1x2 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:graham"},nbt=!{Motive:"minecraft:wanderer"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/1x2
# 2x1 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:courbet"},nbt=!{Motive:"minecraft:creebet"},nbt=!{Motive:"minecraft:pool"},nbt=!{Motive:"minecraft:sea"},nbt=!{Motive:"minecraft:sunset"}] run function tcc:item/paintbrush/painting_cycle/2x1
# 2x2 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:bust"},nbt=!{Motive:"minecraft:match"},nbt=!{Motive:"minecraft:skull_and_roses"},nbt=!{Motive:"minecraft:stage"},nbt=!{Motive:"minecraft:void"},nbt=!{Motive:"minecraft:wither"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/2x2
# 4x3 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:donkey_kong"},nbt=!{Motive:"minecraft:skeleton"}] run function tcc:item/paintbrush/painting_cycle/4x3
# 4x4 paintings
execute unless entity @s[nbt=!{Motive:"minecraft:burning_skull"},nbt=!{Motive:"minecraft:pigscene"},nbt=!{Motive:"minecraft:pointer"}] positioned ~ ~-1 ~ run function tcc:item/paintbrush/painting_cycle/4x4

playsound tcc:item.paintbrush.paint block @a[distance=..16]