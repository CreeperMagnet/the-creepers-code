############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_fence_gate[facing=north] run setblock ~ ~ ~ crimson_fence_gate[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_fence_gate[facing=south] run setblock ~ ~ ~ crimson_fence_gate[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_fence_gate[facing=east] run setblock ~ ~ ~ crimson_fence_gate[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_fence_gate[facing=west] run setblock ~ ~ ~ crimson_fence_gate[facing=north]
