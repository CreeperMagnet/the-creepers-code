# Raycasts

execute if block ^ ^ ^0.01 minecraft:dropper[triggered=false]{Lock:"§soul_conductor\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @n[distance=..0.0001,type=minecraft:item_display,tag=tcc.soul_conductor] at @s positioned ~ ~-0.5 ~ run return run function tcc:block/soul_conductor/find_path/start/main
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 run function tcc:block/soul_conductor/activate/raycast