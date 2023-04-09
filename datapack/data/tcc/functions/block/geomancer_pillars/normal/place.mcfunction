############################################################
# Function to spawn a geomancer pillar
############################################################

fill ~ ~ ~ ~ ~2 ~ barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute align xz run summon item_display ~0.5 ~0.5 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["smithed.entity","smithed.block","tcc.second_clock","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.normal"],item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330005}},transformation:{translation:[0.0f,1.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
