# Get player compendium data

# THE FOLLOWING COMMAND MUST BE RUN SOMEWHERE BEFORE THIS FUNCTION, IN THE SAME TICK:
# >>>> data modify storage tcc:temp root.manage_data.uuid set from entity @s UUID <<<<

function tcc:item/compendium/data/get/find with storage tcc:temp root.manage_data
tag @s remove tcc.dont_set_data
