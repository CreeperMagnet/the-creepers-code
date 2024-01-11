# Functions to run when a player dies with a soulbound item

tag @s remove tcc.has_soulbound_item
execute unless data storage tcc:storage root.dropped_soulbound_items run data modify storage tcc:storage root.dropped_soulbound_items set value []
data modify storage tcc:storage root.dropped_soulbound_items append value {UUID:[I;0,0,0,0],Items:[]}
data modify storage tcc:storage root.dropped_soulbound_items[-1].UUID set from entity @s UUID
execute as @e[type=minecraft:item,distance=..10,predicate=tcc:entity/soulbound_item] run function tcc:item/soulbound_item/check_if_item_vanilla
tag @s add tcc.needs_to_respawn_with_soulbound_items
