# Functions to run when a player respawns after having died with a soulbound item

data modify storage tcc:temp root.dropped_soulbound_items_entry set from storage tcc:temp root.dropped_soulbound_items[0]
execute store success score @s tcc.dummy run data modify storage tcc:temp root.dropped_soulbound_items_entry.UUID set from entity @s UUID
execute if score @s tcc.dummy matches 0 run function tcc:item/soulbound_item/respawn/summon_items
execute unless score @s tcc.dummy matches 0 run data modify storage tcc:temp root.new_dropped_soulbound_items append from storage tcc:temp root.dropped_soulbound_items[0]
data remove storage tcc:temp root.dropped_soulbound_items[0]
execute if data storage tcc:temp root.dropped_soulbound_items[0] run function tcc:item/soulbound_item/respawn/iterate_temp_array