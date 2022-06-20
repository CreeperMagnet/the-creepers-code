############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=north] run setblock ~ ~ ~ repeating_command_block[facing=east,conditional=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=east] run setblock ~ ~ ~ repeating_command_block[facing=south,conditional=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=south] run setblock ~ ~ ~ repeating_command_block[facing=west,conditional=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=west] run setblock ~ ~ ~ repeating_command_block[facing=up,conditional=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=up] run setblock ~ ~ ~ repeating_command_block[facing=down,conditional=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeating_command_block[facing=down] run setblock ~ ~ ~ repeating_command_block[facing=north,conditional=true]
