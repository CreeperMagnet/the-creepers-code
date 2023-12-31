############################################################
# Runs a function for each compendium that is found in the player's inventory
############################################################

data modify storage tcc:storage root.temp.inventory set value []

# Put all items with the specified ID in a list
$data modify storage tcc:storage root.temp.inventory append from entity @s Inventory[{tag:{tcc:{id:"$(id)"}}}]

# If the list isn't empty, search through it
# The specified function path is run for each item found
$execute if data storage tcc:storage root.temp.inventory[-1] run function tcc:item/compendium/find_item/loop {function:"$(function)"}
