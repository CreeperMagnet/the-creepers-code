############################################################
# Description: Checks a ring's name
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.item.tag.tcc{metal:"minecraft:gold"} if data storage tcc:storage root.temp.item.tag.display{Name:'{"italic":false,"translate":"item.tcc.ring.gold"}'} run data modify storage tcc:storage root.temp.default_name set value 1
