# Summons an overgrown

summon minecraft:skeleton ~ ~ ~ {Team:"tcc.no_nametag",Tags:["tcc.modified_vanilla_entity","tcc.overgrown","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/overgrown/default",HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":330000}},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:custom_model_data":330000,"minecraft:potion_contents":{potion:"minecraft:poison"}}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330001}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],CustomName:'{"translate":"entity.tcc.overgrown"}'}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.overgrown"}]}
