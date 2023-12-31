############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]

# Sets the item's data in storage
function tcc:item/durability/modify/main
execute unless data storage tcc:storage root.temp.item run item replace entity @s armor.head with air
item modify entity @s armor.head tcc:durability_lore
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
data modify storage tcc:storage root.temp.item.tag.display.Lore[0] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s armor.head tcc:copy_nbt
