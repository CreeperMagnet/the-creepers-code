############################################################
# Starts the raycast
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.creative set value 1b
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/teapot={add_ingredient=true}}] run data modify storage tcc:storage root.temp.item.tea_ingredient set value 1b

tag @s remove tcc.tag
execute at @s anchored eyes run function tcc:block/teapot/interact/raycast
execute if entity @s[tag=tcc.tag] run function tcc:block/teapot/interact/as_player/main
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/teapot
