############################################################
# Description: Soaks a ring in a potion effect
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item set from entity @s Item
function tcc:item/item_modification/ring/add_potion/main
data modify entity @s Item set from storage tcc:storage root.temp.item
