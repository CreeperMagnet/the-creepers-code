############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_fence_gate[facing=north] run setblock ~ ~ ~ birch_fence_gate[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_fence_gate[facing=south] run setblock ~ ~ ~ birch_fence_gate[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_fence_gate[facing=east] run setblock ~ ~ ~ birch_fence_gate[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_fence_gate[facing=west] run setblock ~ ~ ~ birch_fence_gate[facing=north]
