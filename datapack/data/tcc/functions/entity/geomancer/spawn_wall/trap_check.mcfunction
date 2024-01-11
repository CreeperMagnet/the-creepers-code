# Traps a player using normal geomancer pillars

execute if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/check_for_entity
execute unless block ~ ~-1 ~ #tcc:opaque positioned ~ ~-1 ~ if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/check_for_entity
execute unless block ~ ~-1 ~ #tcc:opaque unless block ~ ~-2 ~ #tcc:opaque positioned ~ ~-2 ~ if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/check_for_entity
execute unless block ~ ~ ~ #tcc:replaceable positioned ~ ~1 ~ if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/check_for_entity
execute unless block ~ ~ ~ #tcc:replaceable unless block ~ ~1 ~ #tcc:replaceable positioned ~ ~2 ~ if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:block/geomancer_pillars/normal/check_for_entity
