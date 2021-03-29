############################################################
# Description: Commands for placing a phantom item frame (player side)
# Creator: Ellivers
############################################################

execute as @e[type=item_frame,limit=1,tag=tcc.phantom_item_frame.empty,tag=tcc.phantom_item_frame.place] at @s run function tcc:block/phantom_item_frame/place
advancement revoke @s only tcc:technical/block/phantom_item_frame_place
