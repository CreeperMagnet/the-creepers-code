############################################################
# Description: Summons a pillar if the conditions are right
# Creator: CreeperMagnet_
############################################################

execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~1 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches 2 positioned ~2 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches 3 positioned ~3 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -1 positioned ~-1 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -2 positioned ~-2 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
execute if score tcc.temp_0 tcc.dummy matches -3 positioned ~-3 ~ ~ run function tcc:entity/geomancer/spawn_explosive/z
