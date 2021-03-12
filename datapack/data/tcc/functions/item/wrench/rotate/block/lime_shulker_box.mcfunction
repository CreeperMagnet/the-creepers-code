############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=north] run setblock ~ ~ ~ lime_shulker_box[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=east] run setblock ~ ~ ~ lime_shulker_box[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=south] run setblock ~ ~ ~ lime_shulker_box[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=west] run setblock ~ ~ ~ lime_shulker_box[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=up] run setblock ~ ~ ~ lime_shulker_box[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lime_shulker_box[facing=down] run setblock ~ ~ ~ lime_shulker_box[facing=north]
