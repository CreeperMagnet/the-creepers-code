# Specific code for only if the gobblerift is not a seedling

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.id set from entity @s item.components."minecraft:custom_data".id
function tcc:block/gobblerift/array_management/remove with storage tcc:temp root.macro_input
execute if data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/gobblerift/named
execute unless data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/gobblerift/unnamed