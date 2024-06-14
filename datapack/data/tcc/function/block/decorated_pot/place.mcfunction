# Commands to place a decorated pot

tag @s remove tcc.tag
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run tag @s add tcc.tag
setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~ ~ {Passengers:[{Tags:["tcc.passenger_entity","tcc.block","tcc.ten_second_clock"],Rotation:[180.0f,0.0f],id:"minecraft:item_display",transformation:{translation:[0.001f,0.501f,-0.001f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.005f,1.005f,1.005f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:custom_model_data":330000}}}],Tags:["tcc.decorated_pot","tcc.decorated_pot.initiate","tcc.block","tcc.tick","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.005f,1.005f,1.005f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:custom_model_data":330000}},view_range:4.0f}
execute as @n[type=minecraft:item_display,distance=..1,tag=tcc.decorated_pot.initiate] run function tcc:block/decorated_pot/initiate

execute if entity @s[tag=tcc.tag] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=true]{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]}
execute unless entity @s[tag=tcc.tag] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=false]{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]}
tag @s remove tcc.tag
