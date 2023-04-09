############################################################
# Finishes the spell for players
############################################################

function tcc:entity/iceologer/ice/make_all
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.pos set from entity @s Pos
