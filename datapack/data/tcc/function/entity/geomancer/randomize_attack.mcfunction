# Chooses a random attack to do on a player

execute if predicate tcc:random_chance/0.33 run return run function tcc:entity/geomancer/spawn_wall/make_trap
function tcc:entity/geomancer/spawn_explosive/start
