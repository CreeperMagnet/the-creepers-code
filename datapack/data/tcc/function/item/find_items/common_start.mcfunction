# Common start function for finding items in a player's inventory

data modify storage tcc:temp root.inventory set value []

# Put all items with the specified data in a list
$data modify storage tcc:temp root.inventory append from entity @s Inventory[$(data)]

# If the list isn't empty, search through it
# The specified function path is run for each item found
$execute if data storage tcc:temp root.inventory[-1] run function tcc:item/find_items/loop {function:'$(function)'}
