# Commands to run off egg tickly


execute store result score #temp_1 tcc.dummy run function tcc:block/piston_push/check

execute if score #temp_1 tcc.dummy matches 1 unless score @s tcc.dummy matches 1.. unless block ~ ~ ~ minecraft:sniffer_egg run return run function tcc:block/sprouter_egg/break/main
execute if score #temp_1 tcc.dummy matches 0 run return run function tcc:block/sprouter_egg/break/main

execute unless score @s tcc.dummy matches 1.. unless block ~ ~ ~ minecraft:sniffer_egg[hatch=0] run function tcc:block/sprouter_egg/hatch/increment