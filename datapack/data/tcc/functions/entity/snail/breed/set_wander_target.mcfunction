############################################################
# Description: Modifies this entity's wander target to have new data from storage
# Creator: CreeperMagnet_
############################################################

effect give @s speed 600 20 true
execute store result entity @s WanderTarget.X int 1 run data get storage tcc:storage root.temp.pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get storage tcc:storage root.temp.pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get storage tcc:storage root.temp.pos[2]
