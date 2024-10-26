# Commands to run when interacting with an echoing hourglass

data remove storage tcc:temp root

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:entity_interaction_range get 1
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players add @s tcc.dummy 2
data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:temp root.creative set value 1b

function tcc:block/echoing_hourglass/interact/distance_macro with storage tcc:temp root.macro_input

advancement revoke @s only tcc:technical/player_interacted_with_entity/echoing_hourglass