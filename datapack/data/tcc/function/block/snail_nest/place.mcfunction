# Commands to place a snail nest

playsound minecraft:block.gravel.place block @a[distance=..16] ~ ~-0.5 ~
summon minecraft:item_display ~ ~1 ~ {Tags:["tcc.snail_nest","tcc.block","tcc.tick","tcc.ten_second_clock","tcc.second_clock","smithed.entity","smithed.block","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/snail_nest"}},view_range:4.0f,teleport_duration:1}
setblock ~ ~ ~ minecraft:clay
