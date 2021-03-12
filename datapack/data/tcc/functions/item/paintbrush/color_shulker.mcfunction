############################################################
# Description: Finds the proper dye in their inventory
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy unless entity @s[nbt={Color:15b}] if score tcc.temp_2 tcc.dummy matches 1 run data modify entity @s Color set value 15b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:11b}] if score tcc.temp_2 tcc.dummy matches 2 run data modify entity @s Color set value 11b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:12b}] if score tcc.temp_2 tcc.dummy matches 3 run data modify entity @s Color set value 12b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:9b}] if score tcc.temp_2 tcc.dummy matches 4 run data modify entity @s Color set value 9b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:7b}] if score tcc.temp_2 tcc.dummy matches 5 run data modify entity @s Color set value 7b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:13b}] if score tcc.temp_2 tcc.dummy matches 6 run data modify entity @s Color set value 13b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:3b}] if score tcc.temp_2 tcc.dummy matches 7 run data modify entity @s Color set value 3b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:8b}] if score tcc.temp_2 tcc.dummy matches 8 run data modify entity @s Color set value 8b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:5b}] if score tcc.temp_2 tcc.dummy matches 9 run data modify entity @s Color set value 5b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:2b}] if score tcc.temp_2 tcc.dummy matches 10 run data modify entity @s Color set value 2b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:1b}] if score tcc.temp_2 tcc.dummy matches 11 run data modify entity @s Color set value 1b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:6b}] if score tcc.temp_2 tcc.dummy matches 12 run data modify entity @s Color set value 6b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:10b}] if score tcc.temp_2 tcc.dummy matches 13 run data modify entity @s Color set value 10b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:14b}] if score tcc.temp_2 tcc.dummy matches 14 run data modify entity @s Color set value 14b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:0b}] if score tcc.temp_2 tcc.dummy matches 15 run data modify entity @s Color set value 0b
execute store result score @s tcc.dummy unless entity @s[nbt={Color:4b}] if score tcc.temp_2 tcc.dummy matches 16 run data modify entity @s Color set value 4b

execute if entity @s[scores={tcc.dummy=1}] as @p[tag=tcc.paintbrush_raycaster] at @s run function tcc:item/paintbrush/color_brush
scoreboard players reset @s tcc.dummy
