############################################################
# Commands for interacting with a phantom item frame (player side)
############################################################

execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={add_item=true}}] run function tcc:entity/phantom_item_frame/interact/add_item.player
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={rotate_empty=true}}] as @e[type=minecraft:item_frame,tag=tcc.phantom_item_frame,tag=tcc.phantom_item_frame.empty,nbt={ItemRotation:1b}] run data modify entity @s ItemRotation set value 0b
advancement revoke @s only tcc:technical/player_interacted_with_entity/phantom_item_frame
