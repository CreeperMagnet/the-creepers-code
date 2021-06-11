############################################################
# Description: Checks a ring's name
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.item.tag.tcc{metal:"minecraft:netherite"} if data storage tcc:storage root.temp.item.tag.display{Name:'{"italic":false,"translate":"item.tcc.ring.netherite"}'} run data modify storage tcc:storage root.temp.default_name set value 1
