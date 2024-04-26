# Modifies falling ice to have proper UUID fields

data modify entity @s TileEntityData.UUID set from storage tcc:temp root.UUID
tag @s remove tcc.newly_spawned_falling_ice