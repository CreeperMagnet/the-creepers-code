# Adds tags to illagers/spawns new onws

execute if entity @s[predicate=tcc:random_chance/0.1] if biome ~ ~ ~ #tcc:spawns_raid_iceologers if data entity @s RaidId run function tcc:commands/summon/iceologer
execute if entity @s[type=minecraft:evoker,predicate=tcc:random_chance/0.5] if data entity @s RaidId run function tcc:commands/summon/enchanter
execute if entity @s[type=minecraft:pillager,predicate=tcc:random_chance/0.2,predicate=tcc:location_check/in_tundra_keep] run function tcc:entity/iceologer/spawn
execute if entity @s[type=minecraft:pillager,predicate=tcc:entity_properties/is_tundra_keep_raid_captain] run loot replace entity @s armor.head loot tcc:items/chilling_banner
