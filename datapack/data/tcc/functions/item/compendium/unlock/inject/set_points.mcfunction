# Set the character points to split the page at

# Get the injection start value and the length of the string to replace
function tcc:item/compendium/data/get/main
$data modify storage tcc:storage root.temp.page_injections[-1].start set from storage tcc:storage root.temp.compendium.page_starts[{page:$(page)}].starts[{name:"$(name)"}].start
execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-1].start
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-1].length

# Debug message
# Perhaps comment this out in release
execute unless data storage tcc:storage root.temp.page_injections[-1].start run tellraw @s {"text":"Injection ","color": "red","extra":[{"nbt":"root.temp.page_injections[-1].name","storage": "tcc:storage"}," is already applied or doesn't exist."]}

# Add the start and length to get the end of the string that the injection replaces
scoreboard players operation #temp_0 tcc.dummy += #temp_1 tcc.dummy
execute store result storage tcc:storage root.temp.page_injections[-1].end int 1 run scoreboard players get #temp_0 tcc.dummy

# Next step
function tcc:item/compendium/unlock/inject/split with storage tcc:storage root.temp.page_injections[-1]
