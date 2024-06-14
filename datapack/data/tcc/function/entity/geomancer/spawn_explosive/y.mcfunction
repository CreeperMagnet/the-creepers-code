# Summons a pillar if the conditions are right

function tcc:entity/geomancer/spawn_explosive/check
execute unless block ~ ~-1 ~ #tcc:opaque positioned ~ ~-1 ~ run function tcc:entity/geomancer/spawn_explosive/check
execute unless block ~ ~-1 ~ #tcc:opaque unless block ~ ~-2 ~ #tcc:opaque positioned ~ ~-2 ~ run function tcc:entity/geomancer/spawn_explosive/check
execute unless block ~ ~ ~ #tcc:replaceable positioned ~ ~1 ~ run function tcc:entity/geomancer/spawn_explosive/check
execute unless block ~ ~ ~ #tcc:replaceable unless block ~ ~1 ~ #tcc:replaceable positioned ~ ~2 ~ run function tcc:entity/geomancer/spawn_explosive/check
