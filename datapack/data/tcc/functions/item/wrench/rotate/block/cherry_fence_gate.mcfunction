############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_fence_gate[facing=north] run setblock ~ ~ ~ cherry_fence_gate[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_fence_gate[facing=south] run setblock ~ ~ ~ cherry_fence_gate[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_fence_gate[facing=east] run setblock ~ ~ ~ cherry_fence_gate[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_fence_gate[facing=west] run setblock ~ ~ ~ cherry_fence_gate[facing=north]
