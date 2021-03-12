############################################################
# Description: Makes an explosive pillar at a random position near the player
# Creator: CreeperMagnet_
############################################################
execute store result score tcc.temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute store result score tcc.temp_2 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_2
execute if score tcc.temp_2 tcc.dummy matches 1 run scoreboard players operation tcc.temp_0 tcc.dummy *= tcc.const.-1 tcc.dummy

execute store result score tcc.temp_1 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute store result score tcc.temp_2 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_2
execute if score tcc.temp_2 tcc.dummy matches 1 run scoreboard players operation tcc.temp_1 tcc.dummy *= tcc.const.-1 tcc.dummy

execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~1 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches 2 positioned ~2 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches 3 positioned ~3 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -1 positioned ~-1 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -2 positioned ~-2 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -3 positioned ~-3 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
