############################################################
# Initiate the boomerang's flight based on the storage values given
############################################################

data merge entity @s {Tags:["tcc.tick","tcc.boomerang","smithed.entity"],interpolation_duration:3,teleport_duration:1,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:330002}}}
data modify entity @s item.tag.tcc.item set from storage tcc:storage root.temp.boomerang.item
data modify entity @s item.tag.Enchantments set from storage tcc:storage root.temp.boomerang.item.tag.Enchantments
data modify entity @s item.tag.tcc.macro_input.slot set from storage tcc:storage root.temp.boomerang.slot
data modify entity @s item.tag.tcc.macro_input.UUID set from storage tcc:storage root.temp.boomerang.UUID
data modify entity @s item.tag.tcc.gamemode set from storage tcc:storage root.temp.boomerang.gamemode
tp @s ~ ~ ~ ~ ~