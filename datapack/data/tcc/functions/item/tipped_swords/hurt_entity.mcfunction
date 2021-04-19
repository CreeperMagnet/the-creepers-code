############################################################
# Description: Commands for hitting things with tipped swords
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item.potion set from entity @s SelectedItem.tag.tcc.potion.id
execute as @e[predicate=tcc:global.ignore,nbt={HurtTime:10s},distance=0.0000001..15] run function tcc:item/tipped_swords/entity_effects
advancement revoke @s only tcc:technical/item/player_with_tipped_sword
function tcc:item/item_modification/tipped_sword/damage
