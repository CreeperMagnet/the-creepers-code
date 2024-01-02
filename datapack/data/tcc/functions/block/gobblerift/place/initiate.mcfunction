############################################################
# Initiates the gobblerift's tags
############################################################

execute unless data storage tcc:storage root.temp{name:'{"translate":"block.tcc.gobblerift","italic":false,"color":"yellow"}'} run data modify entity @s CustomName set from storage tcc:storage root.temp.name
data modify entity @s item.tag.dimension set from storage tcc:storage root.temp.dimension

execute if data storage tcc:storage root.gobblerift_data if data storage tcc:storage root.temp.id run function tcc:block/gobblerift/array_management/check_existing with storage tcc:storage root.temp
execute if data storage tcc:storage root.gobblerift_data unless data storage tcc:storage root.temp.id run function tcc:block/gobblerift/array_management/add_using_next_id
execute unless data storage tcc:storage root.gobblerift_data run function tcc:block/gobblerift/array_management/fabricate_array

data modify entity @s item.tag.id set from storage tcc:storage root.gobblerift_data.array[-1].id

function tcc:block/gobblerift/array_management/add/main
execute on passengers store result score @s tcc.dummy run data get storage tcc:storage root.gobblerift_data.array[-1].id
tag @s remove tcc.gobblerift.start
