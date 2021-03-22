############################################################
# Description: Tips a sword in a potion effect
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item set from entity @s Item
function tcc:item/item_modification/tipped_sword/add_potion/main
data modify entity @s Item set from storage tcc:storage root.temp.item
