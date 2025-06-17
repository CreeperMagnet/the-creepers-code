# Raycasts

execute if block ^ ^ ^0.01 minecraft:dropper{components:{"minecraft:custom_data":{tcc:{block_id:"soul_seer"}}}} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @n[type=minecraft:item_display,distance=..0.0001,tag=tcc.soul_seer] unless score @s tcc.dummy2 matches 1.. at @s positioned ~ ~-1 ~ run return run function tcc:block/soul_seer/activate
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 run function tcc:block/soul_seer/click/raycast