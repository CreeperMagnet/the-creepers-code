############################################################
# Commands to give a player proper riftjuice
############################################################

execute if data storage tcc:storage root.temp.name if data entity @s[predicate=!tcc:entity/full_inventory] SelectedItem run loot give @s loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:storage root.temp.name if data entity @s[predicate=!tcc:entity/full_inventory] SelectedItem run loot give @s loot tcc:technical/riftjuice_bottle/unnamed
execute if data storage tcc:storage root.temp.name if data entity @s[predicate=tcc:entity/full_inventory] SelectedItem run loot spawn ~ ~ ~ loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:storage root.temp.name if data entity @s[predicate=tcc:entity/full_inventory] SelectedItem run loot spawn ~ ~ ~ loot tcc:technical/riftjuice_bottle/unnamed
execute if data storage tcc:storage root.temp.name unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot tcc:technical/riftjuice_bottle/named
execute unless data storage tcc:storage root.temp.name unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot tcc:technical/riftjuice_bottle/unnamed