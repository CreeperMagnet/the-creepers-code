# Disables spawning for specific TCC entities

execute if entity @s[advancements={tcc:technical/item_used_on_block/converted_spawn_egg={use_pig_spawn_egg=true}}] run data modify entity @n[type=minecraft:pig,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] Tags set value ["tcc.modified_vanilla_entity"]
execute if entity @s[advancements={tcc:technical/item_used_on_block/converted_spawn_egg={use_witch_spawn_egg=true}}] run data modify entity @n[type=minecraft:witch,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] Tags set value ["tcc.modified_vanilla_entity"]
advancement revoke @s only tcc:technical/item_used_on_block/converted_spawn_egg
