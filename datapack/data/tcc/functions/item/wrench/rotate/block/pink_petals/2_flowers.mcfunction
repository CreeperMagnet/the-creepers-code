############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_petals[facing=north] run setblock ~ ~ ~ pink_petals[flower_amount=2,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_petals[facing=south] run setblock ~ ~ ~ pink_petals[flower_amount=2,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_petals[facing=east] run setblock ~ ~ ~ pink_petals[flower_amount=2,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_petals[facing=west] run setblock ~ ~ ~ pink_petals[flower_amount=2,facing=north]
