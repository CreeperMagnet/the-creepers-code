############################################################
# Description: Freezes the player
# Creator: CreeperMagnet_
############################################################

title @s[tag=!global.ignore.gui] times 30 100 30
title @s[tag=!global.ignore.gui] title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
execute store result score tcc.temp_0 tcc.dummy run difficulty
scoreboard players set tcc.damage tcc.dummy 10
scoreboard players operation tcc.damage tcc.dummy *= tcc.temp_0 tcc.dummy
scoreboard players set tcc.ignore_armor tcc.dummy 1
tag @s add tcc.damage.iceologer_freeze
function tcc:entity/player/damage/calculate
effect give @s slowness 3 0 false
