# Places an echoing hourglass
execute unless block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air destroy

data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/echoing_hourglass run data modify storage tcc:temp root.item set from entity @s SelectedItem
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/echoing_hourglass run data modify storage tcc:temp root.item set from entity @s Inventory[{Slot:-106b}]

summon minecraft:item_display ~ ~ ~ {Passengers:[{Tags:["tcc.ten_second_clock","tcc.passenger_entity","tcc.echoing_hourglass.powder_bottom"],id:"minecraft:item_display",interpolation_duration:20,item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"minecraft:air"}},transformation:{translation:[0.0f,0.1251f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.999f,0.01f,0.999f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:4.0f},{Tags:["tcc.ten_second_clock","tcc.passenger_entity","tcc.echoing_hourglass.powder_top"],id:"minecraft:item_display",interpolation_duration:20,item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"minecraft:air"}},transformation:{translation:[0.0f,0.625f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.999f,1.0f,0.999f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:4.0f},{Tags:["tcc.ten_second_clock","tcc.passenger_entity","tcc.echoing_hourglass.interaction"],response:true,id:"minecraft:interaction",width:0.5f,height:1.0f,Rotation:[0.0f,0.0f]}],Rotation:[0.0f,0.0f],Tags:["tcc.block","tcc.tick","smithed.entity","smithed.block","tcc.echoing_hourglass","tcc.second_clock","tcc.echoing_hourglass.empty"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:tinted_glass",count:1,components:{"minecraft:custom_data":{break_state:0},"minecraft:item_model":"tcc:block/echoing_hourglass/empty"}},view_range:4.0f}

playsound minecraft:block.glass.place block @a[distance=..16]

execute if predicate tcc:entity_properties/slots/weapon.mainhand/echoing_hourglass run return run item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count
item modify entity @s[gamemode=!creative] weapon.offhand tcc:reduce_count