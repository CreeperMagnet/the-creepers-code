# Finds the dyeable block you are looking at

## Color blocks
execute positioned ^ ^ ^0.01 align xyz if block ~ ~ ~ #tcc:paintbrush/dyeable run return run function tcc:item/paintbrush/color_block

## Here we go again...
scoreboard players remove @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..}] positioned ^ ^ ^0.01 if predicate tcc:location_check/paintbrush_raycast_ignore run function tcc:item/paintbrush/raycast
