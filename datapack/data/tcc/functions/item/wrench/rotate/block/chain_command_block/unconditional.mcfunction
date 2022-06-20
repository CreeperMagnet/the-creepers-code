############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=north] run setblock ~ ~ ~ chain_command_block[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=east] run setblock ~ ~ ~ chain_command_block[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=south] run setblock ~ ~ ~ chain_command_block[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=west] run setblock ~ ~ ~ chain_command_block[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=up] run setblock ~ ~ ~ chain_command_block[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain_command_block[facing=down] run setblock ~ ~ ~ chain_command_block[facing=north]
