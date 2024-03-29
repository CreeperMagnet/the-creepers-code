# Targets the interaction clicked when you interact with the gobblerift

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.creative set value 1b
execute if entity @s[predicate=tcc:entity/holding/gobblerift_meat] run function tcc:block/gobblerift/interact/feed/check_meat
execute as @e[type=minecraft:interaction,tag=tcc.gobblerift,distance=..7,nbt={interaction:{}}] at @s run function tcc:block/gobblerift/interact/as_entity


advancement revoke @s only tcc:technical/player_interacted_with_entity/gobblerift