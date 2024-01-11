# Begins the raycast when you interact with the snail

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

tag @s remove tcc.tag
execute anchored eyes run function tcc:entity/snail/interact/raycast
execute if entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/snail={name=false}}] run item modify entity @s weapon.mainhand tcc:reduce_count/1
item replace entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/snail={breed=true}}] weapon.mainhand with minecraft:bowl 
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/player_interacted_with_entity/snail={bucket=true}}] run function tcc:entity/snail/interact/bucket/as_player
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/snail