############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_portal_frame[facing=north] run setblock ~ ~ ~ end_portal_frame[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_portal_frame[facing=east] run setblock ~ ~ ~ end_portal_frame[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_portal_frame[facing=south] run setblock ~ ~ ~ end_portal_frame[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_portal_frame[facing=west] run setblock ~ ~ ~ end_portal_frame[facing=north]
