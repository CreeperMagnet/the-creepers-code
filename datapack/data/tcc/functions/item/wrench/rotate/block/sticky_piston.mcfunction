############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=north] run setblock ~ ~ ~ sticky_piston[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=east] run setblock ~ ~ ~ sticky_piston[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=south] run setblock ~ ~ ~ sticky_piston[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=west] run setblock ~ ~ ~ sticky_piston[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=up] run setblock ~ ~ ~ sticky_piston[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sticky_piston[facing=down] run setblock ~ ~ ~ sticky_piston[facing=north]
