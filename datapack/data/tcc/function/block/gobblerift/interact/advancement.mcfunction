# Targets the interaction clicked when you interact with the gobblerift

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:temp root.creative set value 1b
execute if entity @s[predicate=tcc:entity_properties/slots/weapon.mainhand/gobblerift_meat] run function tcc:block/gobblerift/interact/feed/check_meat
execute as @n[type=minecraft:interaction,tag=tcc.gobblerift,nbt={interaction:{}}] at @s run function tcc:block/gobblerift/interact/as_entity


advancement revoke @s only tcc:technical/player_interacted_with_entity/gobblerift