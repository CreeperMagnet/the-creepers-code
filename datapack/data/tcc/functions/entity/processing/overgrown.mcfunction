execute store success score #temp_0 tcc.dummy if predicate tcc:random_chance/0.1

execute if score #temp_0 tcc.dummy matches 0 run data merge entity @s {Team:"tcc.no_nametag",Tags:["tcc.modified_vanilla_entity","tcc.burns_in_sunlight","tcc.overgrown","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/overgrown/default",HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:330000}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomModelData:330000,Potion:"minecraft:poison"}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330001}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],CustomName:'{"translate":"entity.tcc.overgrown"}'}

execute if score #temp_0 tcc.dummy matches 1 run data merge entity @s {Team:"tcc.no_nametag",Tags:["tcc.modified_vanilla_entity","tcc.burns_in_sunlight","tcc.overgrown","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/overgrown/bamboo",HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:330000}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomModelData:330000,Potion:"minecraft:poison"}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330089}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],CustomName:'{"translate":"entity.tcc.overgrown"}'}
