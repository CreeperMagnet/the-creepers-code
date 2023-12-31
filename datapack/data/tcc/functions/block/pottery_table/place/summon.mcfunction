############################################################
# Commands for placing a pottery table
############################################################

setblock ~ ~-1 ~ air
summon item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.pottery_table","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:barrel",Count:1b,tag:{stored_barrel_data:[[],[]],CustomModelData:330000}}}
execute positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill
setblock ~ ~-1 ~ barrel{CustomName:'{"translate":"block.tcc.pottery_table.gui","font":"tcc:pottery_table","color":"white","with":[{"translate":"block.tcc.pottery_table","color":"#3F3F3F","font":"minecraft:default"}]}'}