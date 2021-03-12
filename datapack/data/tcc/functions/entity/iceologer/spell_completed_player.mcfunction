############################################################
# Description: Finishes the spell for players
# Creator: CreeperMagnet_
############################################################

execute align xyz run function tcc:entity/iceologer/ice/make_all
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.pos set from entity @s Pos