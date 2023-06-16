############################################################
# Chooses coral drowned stuff
############################################################

execute if entity @s[predicate=tcc:entity/spawning/sponge_drowned] run data merge entity @s {Tags:["tcc.sponge_drowned"],DeathLootTable:"tcc:entities/sponge_drowned",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330018}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330018}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330019}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute unless entity @s[predicate=tcc:entity/spawning/sponge_drowned] run function tcc:entity/processing/drowned/coral/discern_chance