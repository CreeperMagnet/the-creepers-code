############################################################
# Description: Freezes the player
# Creator: CreeperMagnet_
############################################################

title @s[tag=!global.ignore.gui] times 30 100 30
title @s[tag=!global.ignore.gui] title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
scoreboard players set tcc.damage tcc.dummy 20
scoreboard players set tcc.ignore_armor tcc.dummy 1
tag @s add tcc.damage.iceologer_freeze
function tcc:entity/player/damage/calculate
effect give @s slowness 3 0 false
