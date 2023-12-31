############################################################
# Summons an iceologer
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.iceologer"}',Attributes:[{Base:40.0d,Name:"minecraft:generic.max_health"}],Health:40.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/iceologer",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.iceologer","tcc.illager","tcc.trader_entity","smithed.entity"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1s}],Unbreakable:1b}},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{custom_model_data:{head:330054,idle:330056,moving:330058,spellcasting:330060}},CustomModelData:330054}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330056}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.iceologer"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
