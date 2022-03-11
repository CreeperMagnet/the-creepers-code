############################################################
# Damages a player and applies slowness
############################################################

execute store result score #temp_0 tcc.dummy run difficulty
scoreboard players set #damage tcc.dummy 80
scoreboard players operation #damage tcc.dummy *= #temp_0 tcc.dummy
scoreboard players set #ignore_armor tcc.dummy 0
tag @s add tcc.damage.iceologer_ice
function tcc:entity/player/damage/calculate
effect give @s slowness 5 0 false
