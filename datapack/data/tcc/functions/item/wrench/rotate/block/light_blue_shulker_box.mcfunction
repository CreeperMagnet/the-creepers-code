############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=north] run setblock ~ ~ ~ light_blue_shulker_box[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=east] run setblock ~ ~ ~ light_blue_shulker_box[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=south] run setblock ~ ~ ~ light_blue_shulker_box[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=west] run setblock ~ ~ ~ light_blue_shulker_box[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=up] run setblock ~ ~ ~ light_blue_shulker_box[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ light_blue_shulker_box[facing=down] run setblock ~ ~ ~ light_blue_shulker_box[facing=north]
