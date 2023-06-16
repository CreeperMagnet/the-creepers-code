############################################################
# Colors a shulker a specific color
############################################################

execute store result score @s tcc.dummy unless entity @s[nbt={Color:15b}] if data storage tcc:storage root.temp.item{id:"minecraft:black_dye"} run data modify entity @s Color set value 15b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:11b}] if data storage tcc:storage root.temp.item{id:"minecraft:blue_dye"} run data modify entity @s Color set value 11b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:12b}] if data storage tcc:storage root.temp.item{id:"minecraft:brown_dye"} run data modify entity @s Color set value 12b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:9b}] if data storage tcc:storage root.temp.item{id:"minecraft:cyan_dye"} run data modify entity @s Color set value 9b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:7b}] if data storage tcc:storage root.temp.item{id:"minecraft:gray_dye"} run data modify entity @s Color set value 7b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:13b}] if data storage tcc:storage root.temp.item{id:"minecraft:green_dye"} run data modify entity @s Color set value 13b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:3b}] if data storage tcc:storage root.temp.item{id:"minecraft:light_blue_dye"} run data modify entity @s Color set value 3b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:8b}] if data storage tcc:storage root.temp.item{id:"minecraft:light_gray_dye"} run data modify entity @s Color set value 8b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:5b}] if data storage tcc:storage root.temp.item{id:"minecraft:lime_dye"} run data modify entity @s Color set value 5b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:2b}] if data storage tcc:storage root.temp.item{id:"minecraft:magenta_dye"} run data modify entity @s Color set value 2b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:1b}] if data storage tcc:storage root.temp.item{id:"minecraft:orange_dye"} run data modify entity @s Color set value 1b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:6b}] if data storage tcc:storage root.temp.item{id:"minecraft:pink_dye"} run data modify entity @s Color set value 6b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:10b}] if data storage tcc:storage root.temp.item{id:"minecraft:purple_dye"} run data modify entity @s Color set value 10b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:14b}] if data storage tcc:storage root.temp.item{id:"minecraft:red_dye"} run data modify entity @s Color set value 14b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:0b}] if data storage tcc:storage root.temp.item{id:"minecraft:white_dye"} run data modify entity @s Color set value 0b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:4b}] if data storage tcc:storage root.temp.item{id:"minecraft:yellow_dye"} run data modify entity @s Color set value 4b

execute if entity @s[scores={tcc.dummy=1}] as @p[tag=tcc.paintbrush.raycaster] at @s run function tcc:item/paintbrush/color_brush
scoreboard players reset @s tcc.dummy
