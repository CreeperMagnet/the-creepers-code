############################################################
# Description: Checks if an ocean monument's coordinates already exist
# Creator: CreeperMagnet_
############################################################

execute align xyz run loot spawn ~.5 -64 ~.5 loot tcc:technical/ocean_monument_map
execute align xyz positioned ~ -64 ~ as @e[type=item,nbt={Item:{tag:{tcc:{id:"ocean_monument_map"}}}},dx=1,dy=1,dz=1,limit=1] at @s run function tcc:worldgen/ocean_monument_edits/detect/get_map_coords

data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set tcc.temp_0 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score tcc.temp_0 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set value 0
data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set tcc.temp_1 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score tcc.temp_1 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set from storage tcc:storage root.temp.coords
execute if score tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy run function tcc:worldgen/ocean_monument_edits/detect/add_storage
data remove storage tcc:storage root.temp
