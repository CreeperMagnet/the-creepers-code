############################################################
# Commands to place a soul seer
############################################################

setblock ~ ~-1 ~ air
summon item_display ~ ~ ~ {Tags:["tcc.soul_seer","tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.prevents_hoppers","smithed.block","smithed.entity","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330004}}}
execute positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill
setblock ~ ~-1 ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}',Lock:"§soul_seer\\uF001"}
