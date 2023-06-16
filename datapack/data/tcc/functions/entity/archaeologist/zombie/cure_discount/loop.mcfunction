############################################################
# Loops over all entries in the zombie data's gossips
############################################################

data modify storage tcc:storage root.temp.UUID set from storage tcc:storage root.temp.zombie_data.ConversionPlayer
data modify storage tcc:storage root.temp.gossip set from storage tcc:storage root.temp.zombie_data.Gossips[0]
execute store success score #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.UUID set from storage tcc:storage root.temp.gossip.UUID
execute if score #temp_0 tcc.dummy matches 0 if data storage tcc:storage root.temp.gossip{Type:"minor_positive"} run function tcc:entity/archaeologist/zombie/cure_discount/increment_minor_positive
execute if score #temp_0 tcc.dummy matches 0 if data storage tcc:storage root.temp.gossip{Type:"major_positive"} run function tcc:entity/archaeologist/zombie/cure_discount/increment_major_positive

data modify storage tcc:storage root.temp.final_gossips append from storage tcc:storage root.temp.gossip
data remove storage tcc:storage root.temp.zombie_data.Gossips[0]
execute if data storage tcc:storage root.temp.zombie_data.Gossips[0] run function tcc:entity/archaeologist/zombie/cure_discount/loop