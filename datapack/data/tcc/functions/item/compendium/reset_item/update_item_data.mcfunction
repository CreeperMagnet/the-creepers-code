############################################################
# Updates the item data to that of the reset compendium's
############################################################

# This is necessary to prevent subsequent commands from using the previously stored data
$data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:$(slot)b}]
