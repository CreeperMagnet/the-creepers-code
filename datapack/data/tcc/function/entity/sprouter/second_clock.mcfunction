# Runs every second

scoreboard players add @s tcc.dummy2 1

execute if score @s[tag=tcc.baby] tcc.dummy2 matches 1200.. run return run function tcc:entity/sprouter/grow_up

execute if score @s[tag=!tcc.baby] tcc.dummy2 matches 600.. run function tcc:entity/sprouter/increment_stage/main

execute if entity @s[tag=tcc.breeding_cooldown] run function tcc:entity/sprouter/breed/cooldown_loop

execute if entity @s[tag=tcc.in_love] run function tcc:entity/sprouter/breed/pathfind
