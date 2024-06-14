# Functions to run when a player respawns after having died with a soulbound item

data remove storage tcc:temp root
data modify storage tcc:temp root.dropped_soulbound_items set from storage tcc:dropped_soulbound_items array
data modify storage tcc:temp root.new_dropped_soulbound_items set value []
function tcc:item/soulbound_item/respawn/iterate_temp_array
data modify storage tcc:dropped_soulbound_items array set from storage tcc:temp root.new_dropped_soulbound_items
tag @s remove tcc.needs_to_respawn_with_soulbound_items