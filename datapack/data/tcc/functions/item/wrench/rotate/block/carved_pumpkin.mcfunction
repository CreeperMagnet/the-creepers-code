############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ carved_pumpkin[facing=north] run setblock ~ ~ ~ carved_pumpkin[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ carved_pumpkin[facing=east] run setblock ~ ~ ~ carved_pumpkin[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ carved_pumpkin[facing=south] run setblock ~ ~ ~ carved_pumpkin[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ carved_pumpkin[facing=west] run setblock ~ ~ ~ carved_pumpkin[facing=north]
