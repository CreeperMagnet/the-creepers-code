############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=north] run setblock ~ ~ ~ repeating_command_block[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=east] run setblock ~ ~ ~ repeating_command_block[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=south] run setblock ~ ~ ~ repeating_command_block[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=west] run setblock ~ ~ ~ repeating_command_block[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=up] run setblock ~ ~ ~ repeating_command_block[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=down] run setblock ~ ~ ~ repeating_command_block[facing=north]
