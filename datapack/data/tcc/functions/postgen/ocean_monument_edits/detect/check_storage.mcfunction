############################################################
# Checks if an ocean monument's coordinates already exist
############################################################

loot spawn ~.5 ~ ~.5 loot tcc:technical/map/ocean_monument
execute as @e[type=item,nbt={Item:{tag:{tcc:{id:"ocean_monument_map"}}}},dx=1,dy=1,dz=1,limit=1,tag=!smithed.entity] at @s run function tcc:postgen/ocean_monument_edits/detect/get_map_coords
