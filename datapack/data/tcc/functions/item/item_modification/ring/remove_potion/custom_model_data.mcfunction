############################################################
# Description: Modifies the custom model data of a ring
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.item.tag.CustomModelData
scoreboard players set tcc.temp_1 tcc.dummy 1000
execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players operation tcc.temp_0 tcc.dummy -= tcc.temp_1 tcc.dummy
