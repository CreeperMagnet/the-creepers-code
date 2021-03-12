############################################################
# Description: Damages a player and applies slowness
# Creator: CreeperMagnet_
############################################################

scoreboard players set tcc.damage tcc.dummy 120
scoreboard players set tcc.ignore_armor tcc.dummy 0
tag @s add tcc.damage.iceologer_ice
function tcc:entity/player/damage/calculate
effect give @s slowness 5 0 false
