############################################################
# Description: Tests if a peculiar chickens needs to lay an egg
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy run data get entity @s EggLayTime 1
execute if entity @s[scores={tcc.dummy=0..60}] run function tcc:item/peculiar_berries/lay
scoreboard players reset @s tcc.dummy
