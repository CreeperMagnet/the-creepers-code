############################################################
# Offset each entry after the modified entry on the same page
############################################################

# Offset the entry if an offset has been found
scoreboard players set #temp_0 tcc.dummy 0
execute unless score #temp_offset tcc.dummy matches 0 store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.starts[-1].start
execute unless score #temp_offset tcc.dummy matches 0 run scoreboard players operation #temp_0 tcc.dummy += #temp_offset tcc.dummy
execute unless score #temp_offset tcc.dummy matches 0 store result storage tcc:storage root.temp.starts[-1].start int 1 run scoreboard players get #temp_0 tcc.dummy

# Get any offsets to use
scoreboard players set #temp_0 tcc.dummy 0
execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.starts[-1].temp_offset
scoreboard players operation #temp_offset tcc.dummy += #temp_0 tcc.dummy

# Cycle through the list
# Deletes any entries where an offset is found, due to them not being needed anymore
# (Technically supports applying multiple offsets, but that's never used)
execute unless data storage tcc:storage root.temp.starts[-1].temp_offset run data modify storage tcc:storage root.temp.starts prepend from storage tcc:storage root.temp.starts[-1]
data remove storage tcc:storage root.temp.starts[-1]

# Continue the loop
# Can't use the method of deleting entries until there are none left, due to the modified list being used afterwards
scoreboard players add #temp_1 tcc.dummy 1
execute if score #temp_1 tcc.dummy < #temp_2 tcc.dummy run function tcc:item/compendium/data/update_starts/loop
