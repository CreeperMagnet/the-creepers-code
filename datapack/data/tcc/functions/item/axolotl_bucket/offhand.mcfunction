############################################################
# Buckets an axolotl
############################################################

data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
function tcc:item/axolotl_bucket/set_data
item modify entity @s weapon.offhand tcc:copy_nbt
