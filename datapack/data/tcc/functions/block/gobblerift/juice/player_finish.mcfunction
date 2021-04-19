############################################################
# Description: Replaces items and plays sounds for gobblerift bonemealing
# Creator: CreeperMagnet_
############################################################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.gobblerift.juice_ready] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:block/gobblerift/juice/finish
execute if data storage tcc:storage root.temp.item.custom_name run loot replace entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] weapon.mainhand loot tcc:technical/riftjuice_bottle_named
execute if data storage tcc:storage root.temp.item.custom_name unless entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run loot give @s loot tcc:technical/riftjuice_bottle_named
execute unless data storage tcc:storage root.temp.item.custom_name run loot replace entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] weapon.mainhand loot tcc:technical/riftjuice_bottle
execute unless data storage tcc:storage root.temp.item.custom_name unless entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run loot give @s loot tcc:technical/riftjuice_bottle
clear @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] glass_bottle 1
tag @s remove tcc.tag
