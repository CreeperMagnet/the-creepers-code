############################################################
# Summons a pillar if the conditions are right
############################################################

execute unless entity @e[dy=2,predicate=tcc:entity/prevents_geomancer_pillars] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:entity/geomancer/spawn_explosive/place
