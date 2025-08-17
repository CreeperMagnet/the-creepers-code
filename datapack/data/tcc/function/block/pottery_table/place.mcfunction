# Commands for placing a pottery table

data remove storage tcc:temp root
data modify storage tcc:temp root.name set value {"translate":"block.tcc.pottery_table"}
execute if data block ~ ~ ~ CustomName run data modify storage tcc:temp root.name set from block ~ ~ ~ CustomName
setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["tcc.block","tcc.item_display","tcc.pottery_table","smithed.entity","smithed.block","tcc.prevents_hoppers","tcc.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},data:{tcc:{old_barrel_items:[],current_barrel_items:[]}},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/pottery_table"}},view_range:4.0f}
function tcc:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:barrel{CustomName:{"translate":"block.tcc.pottery_table.gui","font":"tcc:pottery_table","color":"white","with":[{"text":"","color":"#3F3F3F","font":"minecraft:default","extra":[""]}]},components:{"minecraft:custom_data":{tcc:{block_id:"pottery_table"}}}}
data modify block ~ ~ ~ CustomName.with[0].extra[0] set from storage tcc:temp root.name