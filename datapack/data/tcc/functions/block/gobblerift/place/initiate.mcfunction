############################################################
# Starts the gobblerift on solid ground
############################################################

execute unless data storage tcc:storage root.temp{name:'{"italic":false,"color":"yellow","translate":"block.tcc.gobblerift"}'} run data modify entity @s CustomName set from storage tcc:storage root.temp.name
data modify entity @s ArmorItems[3].tag.tcc.dimension set from storage tcc:storage root.temp.dimension
data modify entity @s ArmorItems[3].tag.tcc.id set from storage tcc:storage root.temp.id
tp @s[tag=!tcc.gobblerift.naturally_spawned] ~0.5 ~1 ~0.5
schedule function tcc:block/gobblerift/place/kill_temp 6t
data remove entity @s Offers.Recipes
function tcc:block/gobblerift/array_management/add/main
tag @s remove tcc.gobblerift.start
