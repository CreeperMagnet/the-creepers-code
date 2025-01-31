# Scans for placed custom blocks

execute align xyz positioned ~0.5 ~ ~0.5 run function tcc:block/placement/check_blocks
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^1 run function tcc:block/placement/raycast