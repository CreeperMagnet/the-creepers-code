# This function runs as the item display

data modify storage tcc:temp root.macro_input.item set from entity @s item.components."minecraft:custom_data".item
execute unless data storage tcc:temp root.macro_input.item.components run data modify storage tcc:temp root.macro_input.item.components set value {}
function tcc:technical/macros/loot/spawn with storage tcc:temp root.macro_input.item

