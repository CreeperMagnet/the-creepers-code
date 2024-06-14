# Set Data
data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem

# Run Functions
execute as @n[type=minecraft:interaction,tag=tcc.potted_plant,nbt={interaction:{}}] at @s run function tcc:block/potted_plant/interact/as_entity

# Revoke Advancement
advancement revoke @s only tcc:technical/player_interacted_with_entity/potted_plant
