############################################################
# Starts the raycast
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.creative set value 1b
execute if entity @s[predicate=tcc:entity/holding/tea_ingredient] run data modify storage tcc:storage root.temp.item.tea_ingredient set value 1b
execute if entity @s[predicate=tcc:entity/full_inventory] run data modify storage tcc:storage root.temp.full_inventory set value 1b

execute as @e[type=interaction,tag=tcc.teapot,distance=..7,nbt={interaction:{}}] at @s run function tcc:block/teapot/interact/as_entity

advancement revoke @s only tcc:technical/player_interacted_with_entity/teapot