# Processes a pig

execute unless entity @a[distance=..20] unless predicate tcc:entity_properties/is_baby if biome ~ ~ ~ #tcc:spawns_snails run function tcc:entity/snail/spawn
tag @s add tcc.modified_vanilla_entity