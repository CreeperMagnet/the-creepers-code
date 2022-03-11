############################################################
# Freezes the player
############################################################

title @s times 30 100 30
title @s title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
execute store result score #temp_0 tcc.dummy run difficulty
scoreboard players set #damage tcc.dummy 10
scoreboard players operation #damage tcc.dummy *= #temp_0 tcc.dummy
scoreboard players set #ignore_armor tcc.dummy 1
tag @s add tcc.damage.iceologer_freeze
function tcc:entity/player/damage/calculate
effect give @s slowness 3 0 false
