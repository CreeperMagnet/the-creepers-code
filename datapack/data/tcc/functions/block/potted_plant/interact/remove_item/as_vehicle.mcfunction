# Kills the vehicle, but not before giving its item to the player

data modify storage tcc:temp root.item set from entity @s item.components."minecraft:custom_data".item
execute unless data storage tcc:temp root.item.components run data modify storage tcc:temp root.item.components set value {}
data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute as @p[advancements={tcc:technical/player_interacted_with_entity/potted_plant=true}] run function tcc:technical/macros/loot/replace with storage tcc:temp root.item
kill @s
