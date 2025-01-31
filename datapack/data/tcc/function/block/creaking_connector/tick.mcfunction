# Tickly commands for connectors

execute unless block ~ ~ ~ minecraft:furnace run function tcc:block/creaking_connector/break
scoreboard players remove @s[scores={tcc.dummy2=1..}] tcc.dummy2 1
execute if score @s tcc.dummy2 matches 0 run function tcc:block/creaking_connector/power/unpower