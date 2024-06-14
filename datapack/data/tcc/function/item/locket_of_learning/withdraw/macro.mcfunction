# Takes xp from locket based on value

$summon minecraft:experience_orb ~ ~ ~ {Value:$(stored_points)}
scoreboard players set #temp_0 tcc.dummy 0