############################################################
# Description: Checks if an ocean monument's coordinates already exist
# Creator: CreeperMagnet_
############################################################

execute align xyz run loot spawn ~.5 -64 ~.5 loot tcc:technical/ocean_monument_map
execute align xyz positioned ~ -64 ~ as @e[type=item,nbt={Item:{tag:{tcc:{id:"ocean_monument_map"}}}},dx=1,dy=1,dz=1,limit=1] at @s run function tcc:worldgen/ocean_monument_edits/detect/get_map_coords
