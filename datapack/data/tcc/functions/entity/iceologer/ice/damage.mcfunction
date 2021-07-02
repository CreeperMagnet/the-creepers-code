############################################################
# Description: Damages a player and applies slowness
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run difficulty
scoreboard players set tcc.damage tcc.dummy 40
scoreboard players operation tcc.damage tcc.dummy *= tcc.temp_0 tcc.dummy
scoreboard players set tcc.ignore_armor tcc.dummy 0
tag @s add tcc.damage.iceologer_ice
function tcc:entity/player/damage/calculate
effect give @s slowness 5 0 false
