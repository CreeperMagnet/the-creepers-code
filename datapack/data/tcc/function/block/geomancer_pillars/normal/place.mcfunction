# Function to spawn a geomancer pillar

fill ~ ~ ~ ~ ~2 ~ minecraft:barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute align xz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["smithed.entity","smithed.block","tcc.second_clock","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.normal"],item:{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330005}},transformation:{translation:[0.0f,1.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:4.0f}
