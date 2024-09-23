# Commands to give a player proper riftjuice

execute if data storage tcc:temp root.name if data entity @s[predicate=!tcc:entity_properties/full_inventory] SelectedItem run return run loot give @s loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:temp root.name if data entity @s[predicate=!tcc:entity_properties/full_inventory] SelectedItem run return run loot give @s loot tcc:technical/riftjuice_bottle/unnamed
execute if data storage tcc:temp root.name if data entity @s[predicate=tcc:entity_properties/full_inventory] SelectedItem run return run loot spawn ~ ~ ~ loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:temp root.name if data entity @s[predicate=tcc:entity_properties/full_inventory] SelectedItem run return run loot spawn ~ ~ ~ loot tcc:technical/riftjuice_bottle/unnamed
execute if data storage tcc:temp root.name unless data entity @s SelectedItem run return run loot replace entity @s weapon.mainhand loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:temp root.name unless data entity @s SelectedItem run return run loot replace entity @s weapon.mainhand loot tcc:technical/riftjuice_bottle/unnamed