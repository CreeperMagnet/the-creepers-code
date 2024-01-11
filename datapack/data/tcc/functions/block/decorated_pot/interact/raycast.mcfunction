# Raycasts

execute if block ^ ^ ^0.01 minecraft:decorated_pot{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~ ~0.5 as @e[type=minecraft:item_display,distance=..0.0001,tag=tcc.decorated_pot,limit=1] at @s run return run function tcc:block/decorated_pot/interact/as_entity
execute if entity @s[distance=..5] positioned ^ ^ ^0.01 run function tcc:block/decorated_pot/interact/raycast