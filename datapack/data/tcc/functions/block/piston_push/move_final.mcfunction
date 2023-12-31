
execute if score #temp_0 tcc.dummy matches 0 run return 0

execute if score #temp_0 tcc.dummy matches 1 run tp ~1 ~ ~
execute if score #temp_0 tcc.dummy matches 2 run tp ~-1 ~ ~
execute if score #temp_0 tcc.dummy matches 3 run tp ~ ~1 ~
execute if score #temp_0 tcc.dummy matches 4 run tp ~ ~-1 ~
execute if score #temp_0 tcc.dummy matches 5 run tp ~ ~ ~1
execute if score #temp_0 tcc.dummy matches 6 run tp ~ ~ ~-1

scoreboard players set @s tcc.dummy 2
