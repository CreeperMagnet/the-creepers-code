############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_stairs[facing=north] run setblock ~ ~ ~ acacia_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_stairs[facing=east] run setblock ~ ~ ~ acacia_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_stairs[facing=south] run setblock ~ ~ ~ acacia_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_stairs[facing=west] run setblock ~ ~ ~ acacia_stairs[facing=north,half=top]
