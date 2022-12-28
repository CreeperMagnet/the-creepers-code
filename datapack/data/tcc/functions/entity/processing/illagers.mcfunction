############################################################
# Adds tags to villager-hating entities
############################################################

execute if entity @s[predicate=tcc:chance/one_tenth] if biome ~ ~ ~ #tcc:spawns_raid_iceologers if data entity @s RaidId run function tcc:commands/summon/iceologer
execute if entity @s[type=evoker,predicate=tcc:chance/one_half] if data entity @s RaidId run function tcc:commands/summon/enchanter
execute if entity @s[type=pillager,tag=tcc.iceologer_replace] run function tcc:entity/iceologer/spawn
execute if entity @s[type=pillager,tag=!tcc.iceologer_replace,predicate=tcc:chance/one_third,predicate=tcc:location/in_tundra_keep] run function tcc:entity/iceologer/spawn
