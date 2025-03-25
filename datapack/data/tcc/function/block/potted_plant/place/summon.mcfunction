# Summons item displays and edits items properly, end of potted plant raycast

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem
data modify storage tcc:temp root.item.count set value 1
item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count

execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"frostbloom"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_frostbloom"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/frostbloom"}},view_range:4.0f}
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"gobblerift"} if entity @s[y_rotation=135..-135] run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_gobblerift"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/gobblerift"}},view_range:4.0f}
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"gobblerift"} if entity @s[y_rotation=-135..-45] run summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_gobblerift"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/gobblerift"}},view_range:4.0f}
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"gobblerift"} if entity @s[y_rotation=-45..45] run summon minecraft:item_display ~ ~ ~ {Rotation:[-180.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_gobblerift"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/gobblerift"}},view_range:4.0f}
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"gobblerift"} if entity @s[y_rotation=45..135] run summon minecraft:item_display ~ ~ ~ {Rotation:[-90.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_gobblerift"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/gobblerift"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:sweet_berries"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_sweet_berries"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/sweet_berries"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:twisting_vines"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_twisting_vines"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/twisting_vines"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:sunflower"} if entity @s[y_rotation=135..-135] run summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_sunflower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/sunflower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:sunflower"} if entity @s[y_rotation=-135..-45] run summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_sunflower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/sunflower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:sunflower"} if entity @s[y_rotation=-45..45] run summon minecraft:item_display ~ ~ ~ {Rotation:[270.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_sunflower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/sunflower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:sunflower"} if entity @s[y_rotation=45..135] run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_sunflower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/sunflower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:lilac"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_lilac"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/lilac"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:short_grass"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_short_grass"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/short_grass"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:tall_grass"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_tall_grass"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/tall_grass"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:peony"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_peony"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/peony"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:rose_bush"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_rose_bush"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/rose_bush"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:pitcher_plant"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_pitcher_plant"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/pitcher_plant"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:chorus_flower"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_chorus_flower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/chorus_flower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:small_dripleaf"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_small_dripleaf"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/small_dripleaf"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=135..-135] run summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_big_dripleaf"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/big_dripleaf"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=-135..-45] run summon minecraft:item_display ~ ~ ~ {Rotation:[270.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_big_dripleaf"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/big_dripleaf"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=-45..45] run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_big_dripleaf"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/big_dripleaf"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=45..135] run summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_big_dripleaf"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/big_dripleaf"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:cactus_flower"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_cactus_flower"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/cactus_flower"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:bush"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_bush"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/bush"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:firefly_bush"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_firefly_bush"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/firefly_bush"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:short_dry_grass"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_short_dry_grass"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/short_dry_grass"}},view_range:4.0f}
execute if data storage tcc:temp root.item{id:"minecraft:tall_dry_grass"} run summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Passengers:[{Tags:["tcc.block","tcc.potted_plant","smithed.block","tcc.passenger_entity","tcc.ten_second_clock"],response:true,id:"minecraft:interaction",width:0.38f,height:0.38f}],Tags:["tcc.potted_plant","smithed.block","tcc.block","tcc.tick","tcc.second_clock","tcc.potted_tall_dry_grass"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/potted_plant/tall_dry_grass"}},view_range:4.0f}

execute as @n[type=minecraft:item_display,tag=tcc.potted_plant] run data modify entity @s item.components."minecraft:custom_data".item set from storage tcc:temp root.item
