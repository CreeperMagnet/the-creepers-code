# Scans for placed custom decorated pot blocks

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:block/decorated_pot/placement/check_blocks
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^1 run function tcc:block/decorated_pot/placement/raycast