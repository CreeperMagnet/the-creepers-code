############################################################
# Raycasts
############################################################

execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§soul_seer\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @e[type=item_display,distance=..0.0001,tag=tcc.soul_seer,limit=1] unless score @s tcc.dummy2 matches 1.. at @s positioned ~ ~-1 ~ run function tcc:block/soul_seer/activate
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dropper{Lock:"§soul_seer\\uF001"} positioned ^ ^ ^0.01 run function tcc:block/soul_seer/click/raycast