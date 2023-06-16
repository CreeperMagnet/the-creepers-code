############################################################
# Damages a player and applies slowness
############################################################

tag @s add tcc.iceologer_ice_damage_source
data modify storage tcc:storage root.temp.UUID set from entity @s TileEntityData.UUID
execute as @e[type=minecraft:wandering_trader,tag=tcc.iceologer,distance=..30] run function tcc:entity/illager/attack_uuid_matching
execute as @e[dx=0,tag=!tcc.iceologer,tag=!smithed.strict,type=!#tcc:inanimate] run function tcc:entity/iceologer/ice/damage_as_target
tag @s remove tcc.iceologer_ice_damage_source
