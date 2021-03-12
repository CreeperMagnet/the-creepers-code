############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=north] run setblock ~ ~ ~ yellow_shulker_box[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=east] run setblock ~ ~ ~ yellow_shulker_box[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=south] run setblock ~ ~ ~ yellow_shulker_box[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=west] run setblock ~ ~ ~ yellow_shulker_box[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=up] run setblock ~ ~ ~ yellow_shulker_box[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_shulker_box[facing=down] run setblock ~ ~ ~ yellow_shulker_box[facing=north]
