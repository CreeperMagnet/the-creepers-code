# Checks the items in the hopper below the echoing hourglass

data remove storage tcc:temp root

data modify storage tcc:temp root.macro_input.temp_drop_item set from entity @s item.components."minecraft:custom_data".drop_item

execute store result score @s tcc.dummy run function tcc:technical/macros/loot/insert_with_return_value with storage tcc:temp root.macro_input.temp_drop_item
execute if score @s tcc.dummy matches 0 run return fail

return 1