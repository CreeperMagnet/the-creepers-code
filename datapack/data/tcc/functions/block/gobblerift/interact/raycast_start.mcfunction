############################################################
# Begins the raycast when you interact with the gobblerift
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/gobblerift={feed=true}}] run function tcc:block/gobblerift/interact/feed/check_meat
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.creative set value 1b
execute unless entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.creative set value 0b


tag @s remove tcc.tag
execute if data storage tcc:storage root.temp.item anchored eyes run function tcc:block/gobblerift/interact/raycast
execute if data storage tcc:storage root.temp.item if entity @s[gamemode=!creative,tag=tcc.tag] run item modify entity @s weapon.mainhand tcc:reduce_count/1
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/player_interacted_with_entity/gobblerift={juice=true}}] run function tcc:block/gobblerift/interact/juice/as_player
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/gobblerift