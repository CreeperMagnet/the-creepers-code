# Removes all filler comparator items and summons all other items as entities

data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{tcc:{clear:1b}}}}]
data remove storage tcc:temp root.macro_input
function tcc:block/soul_seer/remove_items/loop