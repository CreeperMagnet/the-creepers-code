# Checks for a possible entity that would block the pillar

execute unless entity @e[dy=2,predicate=tcc:entity_properties/prevents_geomancer_pillars] run function tcc:block/geomancer_pillars/normal/place
