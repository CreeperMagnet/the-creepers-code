# Join together the separated strings

# Put the first half, the injection, and the second half together
$data modify storage tcc:storage root.temp.item.tag.pages[$(page)] set value '$(1)$(injection)$(2)}'

# Debug thing: checks if the page is valid JSON
# Perhaps comment this out in release
$execute store result score #temp_0 tcc.dummy run function tcc:item/compendium/unlock/inject/check_page_validity {json:'$(1)$(injection)$(2)}'}
execute if score #temp_0 tcc.dummy matches 0 run tag @s add tcc.invalid_page
execute if score #temp_0 tcc.dummy matches 0 run tellraw @s {"text":"Error when injecting reference to ","color": "red","extra":[{"nbt":"root.temp.start_injection.entry_name","storage": "tcc:storage"}," on page ",{"nbt":"root.temp.page_injections[-1].page","storage": "tcc:storage"}]}
