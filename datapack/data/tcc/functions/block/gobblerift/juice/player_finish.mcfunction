############################################################
# Description: Replaces items and plays sounds for gobblerift bonemealing
# Creator: CreeperMagnet_
############################################################

loot replace entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] weapon.mainhand loot tcc:items/unset_riftjuice_bottle
execute unless entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run loot give @s loot tcc:items/unset_riftjuice_bottle
clear @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] glass_bottle 1
data modify storage tcc:storage root.inventory_temp.Inventory set from entity @s Inventory
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.gobblerift.juice_ready] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:block/gobblerift/juice/finish
function tcc:item/item_modification/inventory/load/non_armor
tag @s remove tcc.tag
