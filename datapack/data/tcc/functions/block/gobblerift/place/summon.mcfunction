############################################################
# Places a gobblerift
############################################################

data remove storage tcc:storage root.temp
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] run data modify storage tcc:storage root.temp.name set from entity @s SelectedItem.tag.display.Name
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] run data modify storage tcc:storage root.temp.id set from entity @s SelectedItem.tag.tcc.gobblerift_id

execute unless entity @s[nbt={SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] run data modify storage tcc:storage root.temp.name set from entity @s Inventory[{Slot:-106b}].tag.display.Name
execute unless entity @s[nbt={SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] run data modify storage tcc:storage root.temp.id set from entity @s Inventory[{Slot:-106b}].tag.tcc.gobblerift_id

data modify storage tcc:storage root.temp.dimension set from entity @s Dimension

execute if entity @s[y_rotation=135..-135] run summon wandering_trader ~0.5 -500 ~0.5 {Rotation:[0.0f,0.0f],Team:"smithed.prevent_aggression",CustomName:'{"translate":"block.tcc.gobblerift"}',AbsorptionAmount:10e100f,DeathLootTable:"tcc:blocks/gobblerift",Offers:{Recipes:[]},DeathTime:19s,ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],NoAI:1b,ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{tcc:{gobblerift_break_state:0,custom_model_data:{idle:330022}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000}}],Health:0.01f,Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","smithed.entity","smithed.block","tcc.gobblerift","tcc.gobblerift.start","tcc.gobblerift.bonemealable","tcc.trader_entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],Silent:1b}
execute if entity @s[y_rotation=-135..-45] run summon wandering_trader ~0.5 -500 ~0.5 {Rotation:[90.0f,0.0f],Team:"smithed.prevent_aggression",CustomName:'{"translate":"block.tcc.gobblerift"}',AbsorptionAmount:10e100f,DeathLootTable:"tcc:blocks/gobblerift",Offers:{Recipes:[]},DeathTime:19s,ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],NoAI:1b,ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{tcc:{gobblerift_break_state:0,custom_model_data:{idle:330022}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000}}],Health:0.01f,Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","smithed.entity","smithed.block","tcc.gobblerift","tcc.gobblerift.start","tcc.gobblerift.bonemealable","tcc.trader_entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],Silent:1b}
execute if entity @s[y_rotation=-45..45] run summon wandering_trader ~0.5 -500 ~0.5 {Rotation:[180.0f,0.0f],Team:"smithed.prevent_aggression",CustomName:'{"translate":"block.tcc.gobblerift"}',AbsorptionAmount:10e100f,DeathLootTable:"tcc:blocks/gobblerift",Offers:{Recipes:[]},DeathTime:19s,ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],NoAI:1b,ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{tcc:{gobblerift_break_state:0,custom_model_data:{idle:330022}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000}}],Health:0.01f,Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","smithed.entity","smithed.block","tcc.gobblerift","tcc.gobblerift.start","tcc.gobblerift.bonemealable","tcc.trader_entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],Silent:1b}
execute if entity @s[y_rotation=45..135] run summon wandering_trader ~0.5 -500 ~0.5 {Rotation:[270.0f,0.0f],Team:"smithed.prevent_aggression",CustomName:'{"translate":"block.tcc.gobblerift"}',AbsorptionAmount:10e100f,DeathLootTable:"tcc:blocks/gobblerift",Offers:{Recipes:[]},DeathTime:19s,ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],NoAI:1b,ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{tcc:{gobblerift_break_state:0,custom_model_data:{idle:330022}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000}}],Health:0.01f,Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","smithed.entity","smithed.block","tcc.gobblerift","tcc.gobblerift.start","tcc.gobblerift.bonemealable","tcc.trader_entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],Silent:1b}
execute if entity @s run summon item_frame ~ ~1 ~ {Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330022}},Facing:1b,Invulnerable:1b,Tags:["smithed.entity","tcc.gobblerift.temp"],Silent:1b,Fixed:1b,Invisible:1b}

execute unless entity @s run setblock ~ ~ ~ air
execute unless entity @s run summon wandering_trader ~ ~-0.5 ~ {Team:"smithed.prevent_aggression",CustomName:'{"translate":"block.tcc.gobblerift"}',AbsorptionAmount:10e100f,DeathLootTable:"tcc:blocks/gobblerift",Offers:{Recipes:[]},DeathTime:19s,ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],NoAI:1b,ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{tcc:{gobblerift_break_state:0,custom_model_data:{idle:330022}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000}}],Health:0.01f,Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","smithed.entity","smithed.block","tcc.gobblerift","tcc.gobblerift.start","tcc.gobblerift.bonemealable","tcc.gobblerift.naturally_spawned","tcc.trader_entity","tcc.trader_entity.no_head","tcc.trader_entity.static"],Silent:1b}


execute as @e[type=wandering_trader,limit=1,sort=nearest,tag=tcc.gobblerift.start] run function tcc:block/gobblerift/place/initiate

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"gobblerift"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"gobblerift"}}}}] weapon.mainhand with air
playsound tcc:block.gobblerift.place block @a[distance=..16]