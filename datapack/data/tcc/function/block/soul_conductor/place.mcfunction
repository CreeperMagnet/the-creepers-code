# Commands to place a soul conductor

execute if block ~ ~-1 ~ minecraft:dropper[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/north"}},view_range:4.0f}
execute if block ~ ~-1 ~ minecraft:dropper[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/east"}},view_range:4.0f}
execute if block ~ ~-1 ~ minecraft:dropper[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/south"}},view_range:4.0f}
execute if block ~ ~-1 ~ minecraft:dropper[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/west"}},view_range:4.0f}
execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/up"}},view_range:4.0f}
execute if block ~ ~-1 ~ minecraft:dropper[facing=down] run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.soul_conductor","smithed.entity","smithed.block","tcc.ten_second_clock","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"tcc:block/soul_conductor/down"}},view_range:4.0f}
data merge block ~ ~-1 ~ {Items:[],CustomName:'{"font":"tcc:technical","translate":"block.tcc.soul_conductor.name"}',lock:{"components":{"minecraft:custom_data":{"tcc":{locked:1b}}}}}

execute positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill