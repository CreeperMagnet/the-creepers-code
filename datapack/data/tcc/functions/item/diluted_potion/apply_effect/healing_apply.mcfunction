############################################################
# Does the healing for the instant health diluted potion
############################################################

scoreboard players set #damage tcc.dummy -10
scoreboard players set #ignore_armor tcc.dummy 1
execute if entity @s[gamemode=!creative] run function tcc:entity/player/damage/calculate
scoreboard players set @s tcc.dummy 1