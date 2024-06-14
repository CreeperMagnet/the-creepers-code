# Raycasts

execute if block ^ ^ ^0.01 minecraft:decorated_pot{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~ ~0.5 as @n[type=minecraft:item_display,distance=..0.0001,tag=tcc.decorated_pot] at @s unless block ~ ~ ~ barrier run function tcc:block/decorated_pot/interact/as_entity
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 run function tcc:block/decorated_pot/interact/raycast