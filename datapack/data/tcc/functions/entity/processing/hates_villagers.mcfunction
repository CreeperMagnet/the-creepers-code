############################################################
# Description: Adds tags to villager-hating entities
# Creator: CreeperMagnet_
############################################################

team join tcc.antivillager @s
execute if entity @s[predicate=tcc:iceologer_raid_spawn] if data entity @s RaidId run function tcc:entity/iceologer/spawn_raid
execute if entity @s[type=evoker,predicate=tcc:chance/one_half] if data entity @s RaidId run function tcc:commands/summon/enchanter
execute if entity @s[type=pillager,tag=tcc.iceologer_replace] run function tcc:entity/iceologer/spawn
execute if entity @s[type=pillager,tag=!tcc.iceologer_replace,predicate=tcc:chance/one_fifth] if entity @e[type=armor_stand,distance=..30,tag=tcc.structure.tundra_keep] run function tcc:entity/iceologer/spawn
