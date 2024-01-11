# Adds tags to villager-hating entities

execute if entity @s[predicate=tcc:random_chance/0.1] if biome ~ ~ ~ #tcc:spawns_raid_iceologers if data entity @s RaidId run function tcc:commands/summon/iceologer
execute if entity @s[type=minecraft:evoker,predicate=tcc:random_chance/0.5] if data entity @s RaidId run function tcc:commands/summon/enchanter
execute if entity @s[type=minecraft:pillager,predicate=tcc:random_chance/0.2,predicate=tcc:location/in_tundra_keep] run function tcc:entity/iceologer/spawn
