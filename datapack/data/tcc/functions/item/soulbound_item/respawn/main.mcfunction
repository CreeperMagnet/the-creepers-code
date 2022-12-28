############################################################
# Functions to run when a player respawns after having died with a soulbound item
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.dropped_soulbound_items set from storage tcc:storage root.dropped_soulbound_items
data modify storage tcc:storage root.temp.new_dropped_soulbound_items set value []
function tcc:item/soulbound_item/respawn/iterate_temp_array
data modify storage tcc:storage root.dropped_soulbound_items set from storage tcc:storage root.temp.new_dropped_soulbound_items
tag @s remove tcc.needs_to_respawn_with_soulbound_items


## TEST CASES
# /data modify storage tcc:storage root.dropped_soulbound_items set value [{UUID: [I; 174075200, -1591786516, -2138149455, -1781296834], Items: [{id: "minecraft:dirt", Count: 2b, tag: {tcc: {soulbound: 1b}}}]}]
# /data modify storage tcc:storage root.dropped_soulbound_items set value [{id:1},{id:2},{id:3},{UUID: [I; 174075200, -1591786516, -2138149455, -1781296834], Items: [{id: "minecraft:dirt", Count: 2b, tag: {tcc: {soulbound: 1b}}}]}]
# /data modify storage tcc:storage root.dropped_soulbound_items set value [{id2:1},{UUID: [I; 174075200, -1591786516, -2138149455, -1781296834], Items: [{id: "minecraft:dirt", Count: 2b, tag: {tcc: {soulbound: 1b}}}]},{id2:1},{id2:3}]