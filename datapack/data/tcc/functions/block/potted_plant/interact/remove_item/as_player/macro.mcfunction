$execute if predicate tcc:entity/full_inventory if data entity @s SelectedItem run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/$(plant)
$execute unless predicate tcc:entity/full_inventory if data entity @s SelectedItem run loot give @s loot tcc:technical/copy_nbt/potted_plant/$(plant)
$execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot tcc:technical/copy_nbt/potted_plant/$(plant)
