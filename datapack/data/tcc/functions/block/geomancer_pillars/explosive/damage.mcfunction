############################################################
# Description: Damages a player with explosives
# Creator: CreeperMagnet_
############################################################

scoreboard players set tcc.damage tcc.dummy 120
scoreboard players set tcc.ignore_armor tcc.dummy 1
tag @s add tcc.damage.geomancer_explosive
function tcc:entity/player/damage/calculate
