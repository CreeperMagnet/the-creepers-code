data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count/1

execute if data storage tcc:storage root.temp.item.tag.tcc{id:"frostbloom"} run function tcc:block/potted_plant/place/variant/frostbloom
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"gobblerift"} if entity @s[y_rotation=135..-135] run function tcc:block/potted_plant/place/variant/gobblerift/south
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"gobblerift"} if entity @s[y_rotation=-135..-45] run function tcc:block/potted_plant/place/variant/gobblerift/west
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"gobblerift"} if entity @s[y_rotation=-45..45] run function tcc:block/potted_plant/place/variant/gobblerift/north
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"gobblerift"} if entity @s[y_rotation=45..135] run function tcc:block/potted_plant/place/variant/gobblerift/east
execute if data storage tcc:storage root.temp.item{id:"minecraft:sweet_berries"} run function tcc:block/potted_plant/place/variant/sweet_berries
execute if data storage tcc:storage root.temp.item{id:"minecraft:twisting_vines"} run function tcc:block/potted_plant/place/variant/twisting_vines
execute if data storage tcc:storage root.temp.item{id:"minecraft:sunflower"} if entity @s[y_rotation=135..-135] run function tcc:block/potted_plant/place/variant/sunflower/south
execute if data storage tcc:storage root.temp.item{id:"minecraft:sunflower"} if entity @s[y_rotation=-135..-45] run function tcc:block/potted_plant/place/variant/sunflower/west
execute if data storage tcc:storage root.temp.item{id:"minecraft:sunflower"} if entity @s[y_rotation=-45..45] run function tcc:block/potted_plant/place/variant/sunflower/north
execute if data storage tcc:storage root.temp.item{id:"minecraft:sunflower"} if entity @s[y_rotation=45..135] run function tcc:block/potted_plant/place/variant/sunflower/east
execute if data storage tcc:storage root.temp.item{id:"minecraft:lilac"} run function tcc:block/potted_plant/place/variant/lilac
execute if data storage tcc:storage root.temp.item{id:"minecraft:peony"} run function tcc:block/potted_plant/place/variant/peony
execute if data storage tcc:storage root.temp.item{id:"minecraft:rose_bush"} run function tcc:block/potted_plant/place/variant/rose_bush
execute if data storage tcc:storage root.temp.item{id:"minecraft:pitcher_plant"} run function tcc:block/potted_plant/place/variant/pitcher_plant
execute if data storage tcc:storage root.temp.item{id:"minecraft:chorus_flower"} run function tcc:block/potted_plant/place/variant/chorus_flower
execute if data storage tcc:storage root.temp.item{id:"minecraft:small_dripleaf"} run function tcc:block/potted_plant/place/variant/small_dripleaf
execute if data storage tcc:storage root.temp.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=135..-135] run function tcc:block/potted_plant/place/variant/big_dripleaf/south
execute if data storage tcc:storage root.temp.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=-135..-45] run function tcc:block/potted_plant/place/variant/big_dripleaf/west
execute if data storage tcc:storage root.temp.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=-45..45] run function tcc:block/potted_plant/place/variant/big_dripleaf/north
execute if data storage tcc:storage root.temp.item{id:"minecraft:big_dripleaf"} if entity @s[y_rotation=45..135] run function tcc:block/potted_plant/place/variant/big_dripleaf/east
execute as @e[type=item_display,tag=tcc.potted_plant,sort=nearest,limit=1] run data modify entity @s item.tag.tcc.item set from storage tcc:storage root.temp.item
