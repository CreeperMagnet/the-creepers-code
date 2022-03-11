############################################################
# Disables spawning for specific TCC entities
############################################################

execute if entity @s[advancements={tcc:technical/item_used_on_block/converted_spawn_egg=true}] run data modify entity @e[type=#tcc:technical/converted,limit=1,sort=nearest,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] Tags set value ["tcc.modified_vanilla_entity"]
advancement revoke @s only tcc:technical/item_used_on_block/converted_spawn_egg
