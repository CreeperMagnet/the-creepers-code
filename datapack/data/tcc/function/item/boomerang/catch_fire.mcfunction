# Sets the boomerang on fire (creates passenger + adds tags)

summon minecraft:item_display ~ ~ ~ {Tags:["tcc.boomerang_fire_display"],item:{components:{"minecraft:item_model":"tcc:block/boomerang_fire"},id:"minecraft:stone",count:1},billboard:"vertical",brightness:{block:15,sky:15},transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:{angle:1.57079632679f,axis:[0.0f,1.0f,0.0f]}},item_display:"gui"}
ride @n[type=minecraft:item_display,predicate=!tcc:entity_properties/in_vehicle,tag=tcc.boomerang_fire_display] mount @s
tag @s add tcc.boomerang.on_fire
data modify entity @s item.components."minecraft:custom_data".tcc.macro_input.fire set value "1"