# Summons the actual entity for the creaking connector

data remove storage tcc:temp root
data modify storage tcc:temp root.name set from block ~ ~ ~ CustomName
data modify storage tcc:temp root.id set from block ~ ~ ~ components."minecraft:custom_data".tcc.creaking_connector_id

setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["tcc.creaking_connector","tcc.creaking_connector.initiate","tcc.block","tcc.item_display","tcc.prevents_hoppers","smithed.block","smithed.entity","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/creaking_connector","minecraft:custom_model_data":{"flags":[false]}}},view_range:4.0f}
function tcc:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:furnace{CustomName:{"font":"tcc:technical","translate":"block.tcc.creaking_connector.name"},"components":{"minecraft:custom_data":{"tcc":{block_id:"creaking_connector"}}},lock:{"components":{"minecraft:custom_data":{"tcc":{locked:1b}}}}}
execute as @n[type=minecraft:item_display,tag=tcc.creaking_connector.initiate] run function tcc:block/creaking_connector/initiate