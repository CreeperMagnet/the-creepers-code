# Summons a coral drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.coral_drowned","tcc.coral_drowned.fire","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/coral_drowned/fire",equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["fire"]}}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["fire"]}}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/head","minecraft:custom_model_data":{"strings":["fire"]}}}},drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
