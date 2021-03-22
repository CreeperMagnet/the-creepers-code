############################################################
# Description: Commands for interacting with a phantom item frame (player side)
# Creator: Ellivers
############################################################

execute if entity @s[advancements={tcc:technical/block/phantom_item_frame_add_item={add_item=true}}] run function tcc:block/phantom_item_frame/interact/add_item.player
execute if entity @s[advancements={tcc:technical/block/phantom_item_frame_add_item={rotate_empty=true}}] as @e[type=minecraft:item_frame,sort=arbitrary,tag=tcc.phantom_item_frame,tag=tcc.phantom_item_frame.empty,nbt={ItemRotation:1b}] run data modify entity @s ItemRotation set value 0b
advancement revoke @s only tcc:technical/block/phantom_item_frame_add_item
