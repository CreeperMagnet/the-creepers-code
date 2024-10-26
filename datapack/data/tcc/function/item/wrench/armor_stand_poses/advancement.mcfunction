# Advancements to run when players use a wrench on an armor stand

data remove storage tcc:temp root

tag @s remove tcc.tag
scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function tcc:item/wrench/armor_stand_poses/raycast
data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute if entity @s[tag=tcc.tag] run function tcc:technical/macros/loot/replace with storage tcc:temp root.item
execute if entity @s[tag=tcc.tag] run function tcc:item/wrench/damage
tag @s remove tcc.tag

advancement revoke @s only tcc:technical/player_interacted_with_entity/armor_stand_wrench