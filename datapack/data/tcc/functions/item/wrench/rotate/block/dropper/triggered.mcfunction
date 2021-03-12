############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=north] run setblock ~ ~ ~ dropper[facing=east,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=south] run setblock ~ ~ ~ dropper[facing=west,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=east] run setblock ~ ~ ~ dropper[facing=south,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=west] run setblock ~ ~ ~ dropper[facing=up,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=up] run setblock ~ ~ ~ dropper[facing=down,triggered=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dropper[facing=down] run setblock ~ ~ ~ dropper[facing=north,triggered=true]
