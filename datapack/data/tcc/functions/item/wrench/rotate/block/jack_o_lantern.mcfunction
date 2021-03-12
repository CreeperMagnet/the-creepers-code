############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jack_o_lantern[facing=north] run setblock ~ ~ ~ jack_o_lantern[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jack_o_lantern[facing=east] run setblock ~ ~ ~ jack_o_lantern[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jack_o_lantern[facing=south] run setblock ~ ~ ~ jack_o_lantern[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jack_o_lantern[facing=west] run setblock ~ ~ ~ jack_o_lantern[facing=north]
