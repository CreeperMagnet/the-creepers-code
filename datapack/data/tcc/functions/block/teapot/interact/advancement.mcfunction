# Commands to run when interacting with a teapot

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:temp root.creative set value 1b
execute if entity @s[predicate=tcc:entity_properties/slots/weapon.mainhand/tea_ingredient] run data modify storage tcc:temp root.item.tea_ingredient set value 1b

execute as @e[type=minecraft:interaction,tag=tcc.teapot,limit=1,sort=nearest,nbt={interaction:{}}] at @s run function tcc:block/teapot/interact/as_entity

advancement revoke @s only tcc:technical/player_interacted_with_entity/teapot