############################################################
# Description: Adds an item to a phantom item frame (player side)
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute as @e[type=item_frame,limit=1,sort=nearest,tag=tcc.phantom_item_frame.empty,nbt={ItemRotation:1b}] run function tcc:block/phantom_item_frame/interact/add_item.item_frame
execute if entity @s[gamemode=!creative] run item entity @s weapon.mainhand modify tcc:reduce_count
