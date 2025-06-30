# Sets the status of a painting

scoreboard players set @s tcc.dummy 0

# 1x1 paintings
execute unless entity @s[nbt=!{variant:"minecraft:alban"},nbt=!{variant:"minecraft:aztec"},nbt=!{variant:"minecraft:aztec2"},nbt=!{variant:"minecraft:bomb"},nbt=!{variant:"minecraft:kebab"},nbt=!{variant:"minecraft:meditative"},nbt=!{variant:"minecraft:plant"},nbt=!{variant:"minecraft:wasteland"}] run function tcc:item/paintbrush/painting_cycle/1x1
# 1x2 paintings
execute unless entity @s[nbt=!{variant:"minecraft:graham"},nbt=!{variant:"minecraft:prairie_ride"},nbt=!{variant:"minecraft:wanderer"}] run function tcc:item/paintbrush/painting_cycle/1x2
# 2x1 paintings
execute unless entity @s[nbt=!{variant:"minecraft:courbet"},nbt=!{variant:"minecraft:creebet"},nbt=!{variant:"minecraft:pool"},nbt=!{variant:"minecraft:sea"},nbt=!{variant:"minecraft:sunset"}] run function tcc:item/paintbrush/painting_cycle/2x1
# 2x2 paintings
execute unless entity @s[nbt=!{variant:"minecraft:baroque"},nbt=!{variant:"minecraft:bust"},nbt=!{variant:"minecraft:humble"},nbt=!{variant:"minecraft:match"},nbt=!{variant:"minecraft:skull_and_roses"},nbt=!{variant:"minecraft:stage"},nbt=!{variant:"minecraft:void"},nbt=!{variant:"minecraft:wither"}] run function tcc:item/paintbrush/painting_cycle/2x2
# 3x3 paintings
execute unless entity @s[nbt=!{variant:"minecraft:bouquet"},nbt=!{variant:"minecraft:cavebird"},nbt=!{variant:"minecraft:cotan"},nbt=!{variant:"minecraft:endboss"},nbt=!{variant:"minecraft:fern"},nbt=!{variant:"minecraft:owlemons"},nbt=!{variant:"minecraft:sunflowers"},nbt=!{variant:"minecraft:tides"},nbt=!{variant:"minecraft:dennis"}] run function tcc:item/paintbrush/painting_cycle/3x3
# 3x4 paintings
execute unless entity @s[nbt=!{variant:"minecraft:backyard"},nbt=!{variant:"minecraft:pond"},nbt=!{variant:"tcc:coward"}] run function tcc:item/paintbrush/painting_cycle/3x4
# 4x2 paintings
execute unless entity @s[nbt=!{variant:"minecraft:changing"},nbt=!{variant:"minecraft:fighters"},nbt=!{variant:"minecraft:finding"},nbt=!{variant:"minecraft:lowmist"},nbt=!{variant:"minecraft:passage"}] run function tcc:item/paintbrush/painting_cycle/4x2
# 4x3 paintings
execute unless entity @s[nbt=!{variant:"minecraft:donkey_kong"},nbt=!{variant:"minecraft:skeleton"}] run function tcc:item/paintbrush/painting_cycle/4x3
# 4x4 paintings
execute unless entity @s[nbt=!{variant:"minecraft:burning_skull"},nbt=!{variant:"minecraft:orb"},nbt=!{variant:"minecraft:pigscene"},nbt=!{variant:"minecraft:pointer"},nbt=!{variant:"minecraft:unpacked"}] run function tcc:item/paintbrush/painting_cycle/4x4

playsound tcc:item.paintbrush.paint block @a[distance=..16]