############################################################
# Triggers when players click a phantom item frame
############################################################

execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={add_item=true}}] as @e[type=item_frame,limit=1,sort=nearest,nbt={Item:{}},tag=!tcc.phantom_item_frame.has_item] at @s run function tcc:block/phantom_item_frame/interact/as_entity
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/phantom_item_frame={rotate=true}}] as @e[type=item_frame,distance=..8,nbt={Item:{}},tag=tcc.phantom_item_frame.has_item] at @s run function tcc:block/phantom_item_frame/rotate
advancement revoke @s only tcc:technical/player_interacted_with_entity/phantom_item_frame