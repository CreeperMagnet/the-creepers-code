############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_fence_gate[facing=north] run setblock ~ ~ ~ spruce_fence_gate[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_fence_gate[facing=south] run setblock ~ ~ ~ spruce_fence_gate[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_fence_gate[facing=east] run setblock ~ ~ ~ spruce_fence_gate[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_fence_gate[facing=west] run setblock ~ ~ ~ spruce_fence_gate[facing=north]
