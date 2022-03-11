############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=north] run setblock ~ ~ ~ dispenser[facing=east,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=south] run setblock ~ ~ ~ dispenser[facing=west,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=east] run setblock ~ ~ ~ dispenser[facing=south,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=west] run setblock ~ ~ ~ dispenser[facing=up,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=up] run setblock ~ ~ ~ dispenser[facing=down,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=down] run setblock ~ ~ ~ dispenser[facing=north,triggered=true]
