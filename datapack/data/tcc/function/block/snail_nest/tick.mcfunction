# Ticking for snail nest block entities

execute store result score #temp_1 tcc.dummy run function tcc:block/piston_push/check

execute if score #temp_1 tcc.dummy matches 1 unless score @s tcc.dummy matches 1.. at @s unless block ~ ~-1 ~ minecraft:clay run function tcc:block/snail_nest/break
execute if score #temp_1 tcc.dummy matches 0 run function tcc:block/snail_nest/break
