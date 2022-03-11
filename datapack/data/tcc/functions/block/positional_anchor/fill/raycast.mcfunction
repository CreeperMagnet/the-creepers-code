############################################################
# Raycasts
############################################################

execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor\\uF001"} positioned ^ ^ ^0.01 align xyz run function tcc:block/positional_anchor/fill/finish
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor\\uF001"} positioned ^ ^ ^0.01 run function tcc:block/positional_anchor/fill/raycast
