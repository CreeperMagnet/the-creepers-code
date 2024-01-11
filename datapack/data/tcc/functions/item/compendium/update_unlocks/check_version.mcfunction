# Checks if the version needs to be updated

execute store result score #temp_ver tcc.dummy run data get storage tcc:storage root.compendium.version.release
execute store result score #temp_item_ver tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.version.release

execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1
execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run return 1


execute store result score #temp_ver tcc.dummy run data get storage tcc:storage root.compendium.version.dev
execute store result score #temp_item_ver tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.version.dev

execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1
