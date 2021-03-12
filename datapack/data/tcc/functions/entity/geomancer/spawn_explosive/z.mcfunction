############################################################
# Description: Changes the z of the pillar
# Creator: CreeperMagnet_
############################################################

execute if score tcc.temp_1 tcc.dummy matches 1 positioned ~ ~ ~1 run function tcc:entity/geomancer/spawn_explosive/y
execute if score tcc.temp_1 tcc.dummy matches 2 positioned ~ ~ ~2 run function tcc:entity/geomancer/spawn_explosive/y
execute if score tcc.temp_1 tcc.dummy matches 3 positioned ~ ~ ~3 run function tcc:entity/geomancer/spawn_explosive/y
execute if score tcc.temp_1 tcc.dummy matches -1 positioned ~ ~ ~-1 run function tcc:entity/geomancer/spawn_explosive/y
execute if score tcc.temp_1 tcc.dummy matches -2 positioned ~ ~ ~-2 run function tcc:entity/geomancer/spawn_explosive/y
execute if score tcc.temp_1 tcc.dummy matches -3 positioned ~ ~ ~-3 run function tcc:entity/geomancer/spawn_explosive/y
