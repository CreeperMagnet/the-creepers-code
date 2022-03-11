############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stairs[facing=north] run setblock ~ ~ ~ warped_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stairs[facing=east] run setblock ~ ~ ~ warped_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stairs[facing=south] run setblock ~ ~ ~ warped_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stairs[facing=west] run setblock ~ ~ ~ warped_stairs[facing=north,half=top]
