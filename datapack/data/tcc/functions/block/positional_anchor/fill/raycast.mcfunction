############################################################
# Description: Raycasts
# Creator: Creeper
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor\\uF001"} positioned ^ ^ ^0.01 run function tcc:block/positional_anchor/fill/raycast
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor\\uF001"} positioned ^ ^ ^0.01 align xyz run function tcc:block/positional_anchor/fill/finish
