# Modifies an item dropped on death by a player

execute if items entity @s contents *[custom_data~{tcc:{id:"compendium"}}|custom_data~{tcc:{id:"unlockable_compendium"}}] run return run function tcc:entity/player/die/kill_compendium
scoreboard players operation @s tcc.deaths = @p[advancements={tcc:technical/entity_hurt_player/player_dies=true}] tcc.deaths
data modify entity @s Thrower set from entity @p[advancements={tcc:technical/entity_hurt_player/player_dies=true}] UUID
tag @s add tcc.death_item