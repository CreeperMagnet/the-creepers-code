# Triggers when players click a phantom item frame

execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={add_item=true}}] as @n[type=minecraft:item_frame,nbt={Item:{}},tag=!tcc.phantom_item_frame.has_item] at @s run function tcc:block/phantom_item_frame/interact/add_item_as_entity
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={rotate=true}}] run function tcc:block/phantom_item_frame/rotate/main
advancement revoke @s only tcc:technical/player_interacted_with_entity/phantom_item_frame