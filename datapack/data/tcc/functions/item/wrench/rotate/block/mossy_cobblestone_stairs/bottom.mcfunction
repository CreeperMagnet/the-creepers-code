############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mossy_cobblestone_stairs[facing=north] run setblock ~ ~ ~ mossy_cobblestone_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mossy_cobblestone_stairs[facing=east] run setblock ~ ~ ~ mossy_cobblestone_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mossy_cobblestone_stairs[facing=south] run setblock ~ ~ ~ mossy_cobblestone_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mossy_cobblestone_stairs[facing=west] run setblock ~ ~ ~ mossy_cobblestone_stairs[facing=north]
