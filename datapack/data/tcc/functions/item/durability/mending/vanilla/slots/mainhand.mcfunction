# Functions to modify the durability of a specific item in a slot

# Set storage stuff
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

# Sets the item's data in storage
function tcc:item/durability/mending/vanilla/main
item modify entity @s weapon.mainhand tcc:copy_nbt
