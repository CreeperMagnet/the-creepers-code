############################################################
# Description: Custom hideflags stuff (add 2 to it)
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.item.tag.HideFlags
data modify storage tcc:storage root.temp.item.tag.tcc.potion.custom_hideflags set from storage tcc:storage root.temp.item.tag.HideFlags
execute store result storage tcc:storage root.temp.item.tag.HideFlags int 1 run scoreboard players add tcc.temp_0 tcc.dummy 2
