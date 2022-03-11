############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=north] run setblock ~ ~ ~ brown_shulker_box[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=east] run setblock ~ ~ ~ brown_shulker_box[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=south] run setblock ~ ~ ~ brown_shulker_box[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=west] run setblock ~ ~ ~ brown_shulker_box[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=up] run setblock ~ ~ ~ brown_shulker_box[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brown_shulker_box[facing=down] run setblock ~ ~ ~ brown_shulker_box[facing=north]
