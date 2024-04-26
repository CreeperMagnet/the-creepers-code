# Replaces items for bucketing snails properly

advancement grant @s only tcc:compendium/snail_mucus/unlock
advancement grant @s only tcc:compendium/snail/unlock

execute if data entity @s[predicate=!tcc:entity_properties/full_inventory] SelectedItem run function tcc:entity/snail/interact/bucket/loot_macros/give with storage tcc:temp root.item
execute if data entity @s[predicate=tcc:entity_properties/full_inventory] SelectedItem run function tcc:entity/snail/interact/bucket/loot_macros/spawn with storage tcc:temp root.item
execute unless data entity @s SelectedItem run function tcc:entity/snail/interact/bucket/loot_macros/weapon.mainhand with storage tcc:temp root.item