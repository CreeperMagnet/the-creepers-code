############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_fence_gate[facing=north] run setblock ~ ~ ~ acacia_fence_gate[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_fence_gate[facing=south] run setblock ~ ~ ~ acacia_fence_gate[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_fence_gate[facing=east] run setblock ~ ~ ~ acacia_fence_gate[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_fence_gate[facing=west] run setblock ~ ~ ~ acacia_fence_gate[facing=north]
