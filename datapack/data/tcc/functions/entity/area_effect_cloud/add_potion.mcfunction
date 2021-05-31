############################################################
# Description: Adds a potion to an item
# Creator: CreeperMagnet_
############################################################

# Clean up the tags of the aec and insert to storage
# Then insert the nearest unpotioned, potionable item into storage
# Then run commands based off of what kind of item is in storage

data remove storage tcc:storage root.temp
function tcc:entity/area_effect_cloud/tag_cleanup
execute unless data storage tcc:storage root.temp{potion:"minecraft:healing"} unless data storage tcc:storage root.temp{potion:"minecraft:strong_healing"} unless data storage tcc:storage root.temp{potion:"minecraft:harming"} unless data storage tcc:storage root.temp{potion:"minecraft:strong_harming"} unless data storage tcc:storage root.temp{potion:"minecraft:saturation"} as @e[type=item,tag=!global.ignore,predicate=tcc:unpotioned_item,dx=4,dz=4,dy=1,limit=1,sort=nearest] run function tcc:entity/area_effect_cloud/soak_item
execute if data storage tcc:storage root.temp.item run function tcc:entity/area_effect_cloud/finish
scoreboard players reset @s tcc.dummy
