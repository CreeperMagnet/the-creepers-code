# Raycasts

execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 run return run function tcc:block/positional_anchor/fill/finish
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 run function tcc:block/positional_anchor/fill/raycast