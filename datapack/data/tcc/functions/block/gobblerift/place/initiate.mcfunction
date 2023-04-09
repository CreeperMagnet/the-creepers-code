############################################################
# Starts the gobblerift on solid ground
############################################################

execute unless data storage tcc:storage root.temp{name:'{"italic":false,"color":"yellow","translate":"block.tcc.gobblerift"}'} run data modify entity @s CustomName set from storage tcc:storage root.temp.name
data modify entity @s item.tag.dimension set from storage tcc:storage root.temp.dimension
data modify entity @s item.tag.id set from storage tcc:storage root.temp.id
function tcc:block/gobblerift/array_management/add/main
execute on passengers store result score @s tcc.dummy run data get storage tcc:storage root.gobblerift_data.array[-1].id
tag @s remove tcc.gobblerift.start
