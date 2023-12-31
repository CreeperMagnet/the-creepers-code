############################################################
# Raycasts
############################################################

execute if block ^ ^ ^0.01 minecraft:dropper[triggered=false]{Lock:"§soul_conductor\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @e[distance=..0.0001,type=item_display,tag=tcc.soul_conductor,limit=1] at @s positioned ~ ~-0.5 ~ run function tcc:block/soul_conductor/find_path/start/main
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dropper[triggered=false]{Lock:"§soul_conductor\\uF001"} positioned ^ ^ ^0.01 run function tcc:block/soul_conductor/activate/raycast
