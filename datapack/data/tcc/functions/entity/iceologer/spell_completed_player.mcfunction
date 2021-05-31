############################################################
# Description: Finishes the spell for players
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.strength align xyz run function tcc:entity/iceologer/ice/strength/make_all
execute unless data storage tcc:storage root.temp.strength align xyz run function tcc:entity/iceologer/ice/make_all
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.pos set from entity @s Pos
