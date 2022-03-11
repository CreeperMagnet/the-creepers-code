############################################################
# Function to spawn a geomancer pillar
############################################################

fill ~ ~ ~ ~ ~2 ~ barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute if data storage tcc:storage root.temp.strength align xz run summon armor_stand ~0.5 ~0.5 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["smithed.entity","smithed.block","tcc.second_clock","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.explosive","tcc.geomancer_pillar.double_damage"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330006}}]}
execute unless data storage tcc:storage root.temp.strength align xz run summon armor_stand ~0.5 ~0.5 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["smithed.entity","smithed.block","tcc.second_clock","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.explosive"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330006}}]}
