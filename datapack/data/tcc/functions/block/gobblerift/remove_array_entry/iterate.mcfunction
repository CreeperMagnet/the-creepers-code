############################################################
# Description: Removes an entry from a temp array for gobblerifts
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.gobblerift_array2 set from storage tcc:storage root.temp.gobblerift_array[0]
execute store success score tcc.temp_0 tcc.dummy run data modify storage tcc:storage root.temp.gobblerift_array2 set from entity @s UUID[0]
execute unless score tcc.temp_0 tcc.dummy matches 0 run data modify storage tcc:storage root.temp.gobblerift_array3 append from storage tcc:storage root.temp.gobblerift_array[0]

data remove storage tcc:storage root.temp.gobblerift_array[0]
scoreboard players remove @s tcc.dummy 1

execute if entity @s[scores={tcc.dummy=0}] run data modify storage tcc:storage root.gobblerift_array set from storage tcc:storage root.temp.gobblerift_array3
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/gobblerift/remove_array_entry/iterate
