############################################################
# Commands to place a decorated pot
############################################################

data modify entity @s item.tag.item_tag set from storage tcc:storage root.temp.item_tag
data modify storage tcc:storage root.temp.item_tag.tcc.sherds[{id:"minecraft:prismarine_shard"}].tag.CustomModelData set value 330016

execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.item_tag.tcc.sherds[0].tag.CustomModelData
execute if score #temp_0 tcc.dummy matches 1.. run scoreboard players remove #temp_0 tcc.dummy 330000
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.item_tag.tcc.sherds[1].tag.CustomModelData
execute if score #temp_1 tcc.dummy matches 1.. run scoreboard players remove #temp_1 tcc.dummy 330000
execute store result score #temp_2 tcc.dummy run data get storage tcc:storage root.temp.item_tag.tcc.sherds[2].tag.CustomModelData
execute if score #temp_2 tcc.dummy matches 1.. run scoreboard players remove #temp_2 tcc.dummy 330000
execute store result score #temp_3 tcc.dummy run data get storage tcc:storage root.temp.item_tag.tcc.sherds[3].tag.CustomModelData
execute if score #temp_3 tcc.dummy matches 1.. run scoreboard players remove #temp_3 tcc.dummy 330000


execute if data storage tcc:storage root.temp{direction:"north"} run function tcc:block/decorated_pot/set_faces/north
execute if data storage tcc:storage root.temp{direction:"east"} run function tcc:block/decorated_pot/set_faces/east
execute if data storage tcc:storage root.temp{direction:"south"} run function tcc:block/decorated_pot/set_faces/south
execute if data storage tcc:storage root.temp{direction:"west"} run function tcc:block/decorated_pot/set_faces/west


scoreboard players set @s tcc.dummy 330000
# back of pot
scoreboard players operation @s tcc.dummy += #temp_4 tcc.dummy

# right side of pot
scoreboard players operation #temp_5 tcc.dummy *= #100 tcc.dummy
scoreboard players operation @s tcc.dummy += #temp_5 tcc.dummy
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s tcc.dummy
execute on passengers run function tcc:block/decorated_pot/initiate_passenger



tag @s remove tcc.decorated_pot.initiate