# Set Data
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

# Run Functions
execute as @e[type=interaction,tag=tcc.potted_plant,distance=..7,nbt={interaction:{}}] at @s run function tcc:block/potted_plant/interact/as_entity
execute if data storage tcc:storage root.temp{action:"take_item"} run function tcc:block/potted_plant/interact/remove_item/as_player with storage tcc:storage root.temp.item

# Revoke Advancement
advancement revoke @s only tcc:technical/player_interacted_with_entity/potted_plant
