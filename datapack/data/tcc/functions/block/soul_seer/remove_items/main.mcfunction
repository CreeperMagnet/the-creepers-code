############################################################
# Removes all filler comparator items and summons all other items as entities
############################################################

data remove block ~ ~ ~ Items[{tag:{tcc:{clear:1b}}}]
data remove storage tcc:storage root.temp.macro_input
function tcc:block/soul_seer/remove_items/loop