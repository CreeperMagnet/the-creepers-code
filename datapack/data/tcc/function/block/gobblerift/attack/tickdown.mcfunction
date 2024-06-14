# Commands to run every tick for gobblerifts

scoreboard players remove @s tcc.dummy2 1
execute unless entity @s[scores={tcc.dummy2=1..}] run function tcc:block/gobblerift/attack/decrement_custom_model_data
execute unless entity @s[scores={tcc.dummy2=1..}] on passengers run tag @s remove tcc.gobblerift.hurt
