############################################################
# Description: Sets the data of the pregnant snail
# Creator: CreeperMagnet_
############################################################

function tcc:entity/snail/breed/set_tags
tag @s add tcc.pregnant
summon minecraft:experience_orb ~ ~ ~ {Value:5s}
data remove storage tcc:storage root.temp
