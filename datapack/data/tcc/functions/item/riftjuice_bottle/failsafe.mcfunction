############################################################
# A spawnpoint teleportation failsafe
############################################################

data modify storage tcc:storage root.temp.riftjuice.pos[0] set from entity @s SpawnX
data modify storage tcc:storage root.temp.riftjuice.pos[1] set from entity @s SpawnY
data modify storage tcc:storage root.temp.riftjuice.pos[2] set from entity @s SpawnZ
data modify storage tcc:storage root.temp.riftjuice.dimension set from entity @s SpawnDimension
tag @s add tcc.tag
function tcc:item/riftjuice_bottle/default_dimensions