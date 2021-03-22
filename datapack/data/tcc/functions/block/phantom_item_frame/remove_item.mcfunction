############################################################
# Description: Remove the item the frame has
# Creator: Ellivers
############################################################

loot replace entity @s container.0 loot tcc:technical/phantom_item_frame_model
data modify entity @s ItemRotation set value 0b
tag @s add tcc.phantom_item_frame.empty
