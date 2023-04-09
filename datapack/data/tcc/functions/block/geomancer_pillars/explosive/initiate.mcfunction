############################################################
# Function to initiate a geomancer pillar
############################################################

data merge entity @s {Tags:["smithed.entity","smithed.block","tcc.second_clock","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.explosive"],item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330006}},transformation:{translation:[0.0f,1.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @s item.tag.UUID set from storage tcc:storage root.temp.UUID