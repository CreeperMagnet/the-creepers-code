############################################################
# Description: Starts the gobblerift on solid ground
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.gobblerift.custom_name] run data modify entity @s CustomName set from entity @p[tag=tcc.tag] SelectedItem.tag.display.Name
tp @s[tag=!tcc.gobblerift.naturally_spawned] ~0.5 ~1 ~0.5
schedule function tcc:block/gobblerift/place/kill_temp 6t
data remove entity @s Offers.Recipes
data modify storage tcc:storage root.gobblerift_array append from entity @s UUID[0]
tag @s remove tcc.gobblerift.start
