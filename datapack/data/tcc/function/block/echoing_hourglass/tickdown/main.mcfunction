# Main commands for ticking down an echoing hourglass's time

execute store result score #temp_0 tcc.dummy run scoreboard players remove @s tcc.dummy2 1
scoreboard players add #temp_0 tcc.dummy 1
scoreboard players operation #temp_0 tcc.dummy %= #10 tcc.dummy
execute unless score @s tcc.dummy2 matches 39 if score #temp_0 tcc.dummy matches 0 run function tcc:block/echoing_hourglass/tickdown/increment_stage
execute if score @s tcc.dummy2 matches -1 run return run function tcc:block/echoing_hourglass/tickdown/finish
function tcc:block/echoing_hourglass/tickdown/edit_display_passengers