############################################################
# Summons an wandering witch
############################################################

summon wandering_trader ~ ~ ~ {DespawnDelay:48000,CustomName:'{"translate":"entity.tcc.wandering_witch"}',Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/wandering_witch",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Duration:100000,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.wandering_witch","tcc.has_trades","tcc.trader_entity","smithed.entity","tcc.wandering_witch.newly_spawned"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330066,tcc:{custom_model_data:{head:330066,idle:330068,moving:330070}}}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330068}}]}
execute as @e[type=wandering_trader,limit=1,tag=tcc.wandering_witch.newly_spawned] run function tcc:entity/wandering_witch/initiate_trader

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.wandering_witch"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
