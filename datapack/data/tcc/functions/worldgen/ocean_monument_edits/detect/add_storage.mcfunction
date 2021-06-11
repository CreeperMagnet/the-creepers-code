############################################################
# Description: Adds the coords of monument to the array. Only run if it doesn't already exist
# Creator: CreeperMagnet_
############################################################

execute align xyz positioned ~ -64 ~ as @e[type=item,nbt={Item:{tag:{tcc:{id:"ocean_monument_map"}}}},dx=1,dy=1,dz=1,limit=1] at @s run function tcc:worldgen/ocean_monument_edits/detect/spawn_marker
data modify storage tcc:storage root.monuments append from storage tcc:storage root.temp.coords
