############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_hyphae[axis=y] run setblock ~ ~ ~ warped_hyphae[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_hyphae[axis=x] run setblock ~ ~ ~ warped_hyphae[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_hyphae[axis=z] run setblock ~ ~ ~ warped_hyphae[axis=y]
