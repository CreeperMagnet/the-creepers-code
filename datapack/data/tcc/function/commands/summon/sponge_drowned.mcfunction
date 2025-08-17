# Summons a sponge drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.sponge_drowned"],DeathLootTable:"tcc:entities/sponge_drowned",equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/head"}}},drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
