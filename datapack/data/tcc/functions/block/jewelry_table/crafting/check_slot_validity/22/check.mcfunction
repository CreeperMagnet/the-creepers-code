############################################################
# Commands to check if a slot contains valid items
############################################################

execute unless data storage tcc:storage root.temp.barrel_data[1][{Slot:22b}].tag.tcc{id:"amethyst_dust"} run function tcc:block/jewelry_table/crafting/check_slot_validity/22/export
