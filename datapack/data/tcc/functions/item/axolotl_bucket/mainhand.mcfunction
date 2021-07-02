############################################################
# Description: Buckets an axolotl
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
function tcc:item/axolotl_bucket/set_data
item modify entity @s weapon.mainhand tcc:copy_nbt
