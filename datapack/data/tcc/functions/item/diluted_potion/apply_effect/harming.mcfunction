############################################################
# Applies a potion effect
############################################################

scoreboard players set #damage tcc.dummy 10
scoreboard players set #ignore_armor tcc.dummy 1
tag @s add tcc.damage.diluted_harming_potion
execute if entity @s run function tcc:entity/player/damage/calculate
scoreboard players set @s tcc.dummy 1