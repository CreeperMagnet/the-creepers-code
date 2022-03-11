############################################################
# Checks if an array in the gobblerift array already exists
############################################################

# Check if an ID already exists in the array, if so, generate a new id.
scoreboard players reset #temp tcc.dummy
execute if data entity @s ArmorItems[3].tag.tcc.id store result score #temp tcc.dummy run data get entity @s ArmorItems[3].tag.tcc.id
function tcc:block/gobblerift/array_management/get

# Create a new entry!
function tcc:block/gobblerift/array_management/add/create_entry

# If the entry already existed, generate a new id.
execute if data storage tcc:storage root.temp.entry run function tcc:block/gobblerift/array_management/add/generate_new_id

# If this entity didn't have an ID, make an id.
execute unless data entity @s ArmorItems[3].tag.tcc.id run function tcc:block/gobblerift/array_management/add/generate_new_id

# If this id is greater than the current amount of existing in the world, generate a new id instead
execute store result score @s tcc.dummy run data get entity @s ArmorItems[3].tag.tcc.id
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.gobblerift_data.next_id
execute if score @s tcc.dummy >= #temp_1 tcc.dummy run function tcc:block/gobblerift/array_management/add/generate_new_id

# Set this entity's id based on all the stuff made above.
data modify entity @s ArmorItems[3].tag.tcc.id set from storage tcc:storage root.gobblerift_data.array[-1].id
