# Summons a glow lichen zombie

summon minecraft:zombie ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.glow_lichen_zombie"],DeathLootTable:"tcc:entities/glow_lichen_zombie",equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/head"}}},drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.zombie"}]}
