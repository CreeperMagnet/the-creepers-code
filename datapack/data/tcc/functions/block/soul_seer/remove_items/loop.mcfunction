# Removes all filler comparator items and summons all other items as entities

execute unless data block ~ ~ ~ Items[0] run return 0
data modify storage tcc:storage root.temp.macro_input.item set from block ~ ~ ~ Items[0]
execute positioned ~ ~1 ~ run function tcc:technical/macros/spawn_item with storage tcc:storage root.temp.macro_input
data remove block ~ ~ ~ Items[0]

function tcc:block/soul_seer/remove_items/loop