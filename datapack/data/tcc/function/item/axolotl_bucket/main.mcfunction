# Buckets an axolotl

data remove storage tcc:temp root
function tcc:item/find_items/common_start {data:{id:"minecraft:axolotl_bucket"},function:"tcc:item/axolotl_bucket/item_found"}

advancement revoke @s only tcc:technical/player_interacted_with_entity/bucket_axolotl
