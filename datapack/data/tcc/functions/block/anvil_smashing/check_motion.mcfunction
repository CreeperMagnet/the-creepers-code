############################################################
# Description: Makes sure the anvil has enough downwards motion
# Creator: Ellivers
############################################################

execute unless entity @s[scores={tcc.dummy=..-40}] store result score @s tcc.dummy run data get entity @s Motion[1] 100
execute if entity @s[scores={tcc.dummy=..-40}] run function tcc:block/anvil_smashing/smash
