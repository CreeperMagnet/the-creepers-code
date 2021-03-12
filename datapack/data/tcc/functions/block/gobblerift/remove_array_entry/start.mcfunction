############################################################
# Description: Removes an entry from the gobblerift array
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.gobblerift_array3 set value []
data modify storage tcc:storage root.temp.gobblerift_array set from storage tcc:storage root.gobblerift_array
execute store result score @s tcc.dummy run data modify storage tcc:storage root.temp.gobblerift_array[] set value 0
data modify storage tcc:storage root.temp.gobblerift_array set from storage tcc:storage root.gobblerift_array
function tcc:block/gobblerift/remove_array_entry/iterate