############################################################
# Commands for placing a phantom item frame (player side)
############################################################

execute as @e[type=item_frame,limit=1,tag=tcc.phantom_item_frame.empty,tag=tcc.phantom_item_frame.place] at @s run function tcc:entity/phantom_item_frame/place
advancement revoke @s only tcc:technical/item_used_on_block/place_phantom_item_frame
