# Checks if the version needs to be updated

execute store result score #temp_ver tcc.dummy run data get storage tcc:compendium version.release
execute store result score #temp_item_ver tcc.dummy run data get storage tcc:temp root.item.components."minecraft:custom_data".tcc.version.release

execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1
execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run return 1


execute store result score #temp_ver tcc.dummy run data get storage tcc:compendium version.dev
execute store result score #temp_item_ver tcc.dummy run data get storage tcc:temp root.item.components."minecraft:custom_data".tcc.version.dev

execute unless score #temp_ver tcc.dummy = #temp_item_ver tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1
