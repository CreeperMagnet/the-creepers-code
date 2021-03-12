############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=north] run setblock ~ ~ ~ dispenser[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=south] run setblock ~ ~ ~ dispenser[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=east] run setblock ~ ~ ~ dispenser[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=west] run setblock ~ ~ ~ dispenser[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=up] run setblock ~ ~ ~ dispenser[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dispenser[facing=down] run setblock ~ ~ ~ dispenser[facing=north]
