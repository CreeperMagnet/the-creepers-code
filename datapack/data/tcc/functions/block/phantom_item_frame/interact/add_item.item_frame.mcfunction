############################################################
# Description: Adds an item to a phantom item frame
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.phantom_item_frame.empty
data modify entity @s Item set from storage tcc:storage root.temp.item
data modify entity @s ItemRotation set value 0b
