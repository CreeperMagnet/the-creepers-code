# Runs when a decorated pot is placed

data remove storage tcc:temp root
execute if entity @s[y_rotation=-135..-45] run data modify storage tcc:temp root.direction set value "east"
execute if entity @s[y_rotation=-45..45] run data modify storage tcc:temp root.direction set value "south"
execute if entity @s[y_rotation=45..135] run data modify storage tcc:temp root.direction set value "west"
execute if entity @s[y_rotation=135..225] run data modify storage tcc:temp root.direction set value "north"

execute if items entity @s weapon.offhand minecraft:decorated_pot[minecraft:custom_data~{tcc:{id:"decorated_pot"}}] run data modify storage tcc:temp root.item set from entity @s Inventory[{Slot:-106b}]
# The mainhand overrides the offhand
execute if items entity @s weapon.mainhand minecraft:decorated_pot[minecraft:custom_data~{tcc:{id:"decorated_pot"}}] run data modify storage tcc:temp root.item set from entity @s SelectedItem
data remove storage tcc:temp root.item.count


scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s tcc.dummy 2
execute anchored eyes run function tcc:block/decorated_pot/placement/raycast


advancement revoke @s only tcc:technical/placed_block/custom_decorated_pot