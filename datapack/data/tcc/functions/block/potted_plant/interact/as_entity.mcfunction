# Runs when the potted plant's interaction is clicked

data remove entity @s interaction
execute unless data storage tcc:storage root.temp.item run function tcc:block/potted_plant/interact/remove_item/main
