# Sets the boomerang on fire (creates passenger + adds tags)

summon minecraft:item_display ~ ~ ~ {Tags:["tcc.boomerang_fire_display","tcc.passenger_entity","tcc.ten_second_clock"],item:{tag:{CustomModelData:330002},id:"minecraft:structure_block",Count:1b},billboard:"vertical",brightness:{block:15,sky:15},transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:{angle:1.57079632679f,axis:[0.0f,1.0f,0.0f]}},item_display:"gui"}
ride @e[type=minecraft:item_display,limit=1,predicate=!tcc:entity/in_vehicle,tag=tcc.boomerang_fire_display] mount @s
tag @s add tcc.boomerang.on_fire
data modify entity @s item.tag.tcc.macro_input.fire set value "1"