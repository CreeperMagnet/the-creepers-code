# Begins the raycast when you interact with the sprouter

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s SelectedItem

tag @s remove tcc.tag
scoreboard players set @s tcc.dummy 0
execute if entity @s[advancements={tcc:technical/player_interacted_with_entity/sprouter={leash=true}}] run data modify storage tcc:temp root.macro_input.UUID set from entity @s UUID
execute store result score @s tcc.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function tcc:entity/sprouter/interact/raycast
item modify entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/sprouter={shear=false}}] weapon.mainhand tcc:reduce_count
execute if entity @s[tag=tcc.tag,gamemode=!creative,advancements={tcc:technical/player_interacted_with_entity/sprouter={shear=true}}] run function tcc:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"1"}
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/sprouter