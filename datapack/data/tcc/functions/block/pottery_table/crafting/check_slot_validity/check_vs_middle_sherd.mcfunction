############################################################
# Checks if an input sherd matches the middle sherd that is being cloned
############################################################

data modify storage tcc:storage root.temp.compare[0] set from block ~ ~ ~ Items[{Slot:12b}]
data remove storage tcc:storage root.temp.compare[].Slot
data remove storage tcc:storage root.temp.compare[].Count
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.compare[0] set from storage tcc:storage root.temp.compare[1]