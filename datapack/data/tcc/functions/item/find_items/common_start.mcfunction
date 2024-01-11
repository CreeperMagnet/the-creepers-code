# Common start function for finding items in a player's inventory

data modify storage tcc:storage root.temp.inventory set value []

# Put all items with the specified ID in a list
$data modify storage tcc:storage root.temp.inventory append from entity @s Inventory[$(data)]

# If the list isn't empty, search through it
# The specified function path is run for each item found
$execute if data storage tcc:storage root.temp.inventory[-1] run function tcc:item/find_items/loop {function:'$(function)'}
