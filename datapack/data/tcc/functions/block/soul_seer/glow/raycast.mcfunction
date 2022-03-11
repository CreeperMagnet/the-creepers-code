############################################################
# Raycasts
############################################################

execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§soul_seer_off\\uF001"} positioned ^ ^ ^0.01 align xyz as @e[dx=0,type=armor_stand,tag=tcc.soul_seer,limit=1] at @s run function tcc:block/soul_seer/glow/modify_entity
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dropper{Lock:"§soul_seer_on\\uF001"} positioned ^ ^ ^0.01 run function tcc:block/soul_seer/glow/raycast
