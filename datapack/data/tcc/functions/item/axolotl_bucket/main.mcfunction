############################################################
# Buckets an axolotl
############################################################

data remove storage tcc:storage root.temp
execute if data entity @s SelectedItem{id:"minecraft:axolotl_bucket"} unless data entity @s SelectedItem.tag.CustomModelData run function tcc:item/axolotl_bucket/mainhand
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:-106b}].tag.CustomModelData run function tcc:item/axolotl_bucket/offhand

advancement revoke @s only tcc:technical/player_interacted_with_entity/bucket_axolotl
