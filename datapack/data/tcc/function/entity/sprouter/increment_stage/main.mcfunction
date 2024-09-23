# Increments the flowering stage of the dino

scoreboard players reset @s tcc.dummy2

execute if entity @s[tag=tcc.sprouter.stage_0] run return run function tcc:entity/sprouter/increment_stage/stage_1
execute if entity @s[tag=tcc.sprouter.stage_1] run return run function tcc:entity/sprouter/increment_stage/stage_2
execute if entity @s[tag=tcc.sprouter.stage_2] run return run function tcc:entity/sprouter/increment_stage/stage_3