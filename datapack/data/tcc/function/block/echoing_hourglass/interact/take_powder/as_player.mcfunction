# Either /gives or /item replaces based on if you have item in mainhand

data modify storage tcc:temp root.macro_input.item.slot set value "weapon.mainhand"
execute if data storage tcc:temp root.macro_input.item.components."minecraft:block_entity_data"{id:"minecraft:brushable_block"} run advancement grant @s only tcc:minecraft/adventure/use_echoing_hourglass
execute unless data storage tcc:temp root.macro_input.item.components run data modify storage tcc:temp root.macro_input.item.components set value {}
execute if data entity @s SelectedItem run return run function tcc:technical/macros/loot/give with storage tcc:temp root.macro_input.item
execute unless data entity @s SelectedItem run return run function tcc:technical/macros/loot/replace with storage tcc:temp root.macro_input.item