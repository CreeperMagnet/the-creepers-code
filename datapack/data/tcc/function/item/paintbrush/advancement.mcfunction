# Runs when the brush is held

tag @s add tcc.painting_with_brush
scoreboard players add @s tcc.paintbrush_timer 1
scoreboard players operation @s[scores={tcc.paintbrush_timer=1..}] tcc.paintbrush_timer %= #16 tcc.dummy
execute if score @s tcc.paintbrush_timer matches 0 run function tcc:item/paintbrush/start_raycast

advancement revoke @s only tcc:technical/using_item/brush_with_dye