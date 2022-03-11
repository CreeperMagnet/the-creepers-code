############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=north] run setblock ~ ~ ~ barrel[facing=east,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=south] run setblock ~ ~ ~ barrel[facing=west,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=east] run setblock ~ ~ ~ barrel[facing=south,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=west] run setblock ~ ~ ~ barrel[facing=up,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=up] run setblock ~ ~ ~ barrel[facing=down,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=down] run setblock ~ ~ ~ barrel[facing=north,open=true]
