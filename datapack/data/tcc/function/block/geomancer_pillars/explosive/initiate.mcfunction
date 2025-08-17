# Function to initiate a geomancer pillar

data merge entity @s {Tags:["smithed.entity","smithed.block","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.explosive"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/geomancer_pillar/explosive","minecraft:custom_model_data":{"flags":[false]}}},transformation:{translation:[0.0f,1.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:4.0f}
data modify entity @s item.components."minecraft:custom_data".UUID set from storage tcc:temp root.UUID