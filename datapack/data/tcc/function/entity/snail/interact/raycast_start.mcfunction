# Begins the raycast when you interact with the snail

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem

tag @s remove tcc.tag
scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.entity_interaction_range get 100
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/snail={leash=true}}] run data modify storage tcc:temp root.macro_input.UUID set from entity @s UUID
execute anchored eyes run function tcc:entity/snail/interact/raycast
execute if entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/snail={name=false}}] run item modify entity @s weapon.mainhand tcc:reduce_count
item replace entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/snail={breed=true}}] weapon.mainhand with minecraft:bowl
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/player_interacted_with_entity/snail={bucket=true}}] run function tcc:entity/snail/interact/bucket/as_player
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/snail