# Ticks down the tea effect

scoreboard players remove @s tcc.tea 1
execute if entity @s[scores={tcc.tea=0}] run function tcc:item/tea/stop
execute if data storage tcc:gamerules {alwaysShowTeaTimer:1b} run function tcc:item/tea/clear/set_timer_scores
