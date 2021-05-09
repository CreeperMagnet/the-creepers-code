############################################################
# Description: Disables spawning for specific TCC entities
# Creator: CreeperMagnet_
############################################################

execute if entity @s[advancements={tcc:technical/entity/disable_spawning={use_pig_spawn_egg=true}}] run data modify entity @e[type=pig,limit=1,sort=nearest,tag=!tcc.modified_vanilla_entity] Tags set value ["tcc.modified_vanilla_entity"]
execute if entity @s[advancements={tcc:technical/entity/disable_spawning={use_witch_spawn_egg=true}}] run data modify entity @e[type=witch,limit=1,sort=nearest,tag=!tcc.modified_vanilla_entity] Tags set value ["tcc.modified_vanilla_entity"]
advancement revoke @s only tcc:technical/entity/disable_spawning
