############################################################
# Update the injection positions (starts) for all injections after this one
############################################################

# Compares this injection's page with the last injection's page
execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-2].page
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-1].page

# If the pages are the same, remove the injection start value for this injection
# Doesn't work with page 0 due to a failed store also causing temp_0 to be 0, but that's not a page where injections appear anyway
execute store success score #temp_0 tcc.dummy if score #temp_0 tcc.dummy = #temp_1 tcc.dummy
$execute if score #temp_0 tcc.dummy matches 1 run data remove storage tcc:storage root.temp.compendium.page_starts[{page:$(page)}].starts[{name:"$(name)"}]
execute if score #temp_0 tcc.dummy matches 1 run function tcc:item/compendium/data/set/main
execute if score #temp_0 tcc.dummy matches 1 run return 0

# If the pages are different, this page has been completed and has its start values updated

# Store the offset in this injection start entry
function tcc:item/compendium/data/get/main
$execute store result storage tcc:storage root.temp.compendium.page_starts[{page:$(page)}].starts[{name:"$(name)"}].temp_offset int 1 run scoreboard players get #temp_combined_offset tcc.dummy
function tcc:item/compendium/data/set/main

scoreboard players set #temp_combined_offset tcc.dummy 0

# Update the start values for all injections on this page that appear after this injection
function tcc:item/compendium/data/update_starts/main with storage tcc:storage root.temp.page_injections[-1]
