# Damages a player and applies slowness

tag @s add tcc.iceologer_ice_damage_source
data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.UUID set from entity @s TileEntityData.UUID
execute as @e[dx=0,tag=!tcc.iceologer,tag=!smithed.strict,type=!#tcc:inanimate] run function tcc:entity/iceologer/ice/damage_as_target with storage tcc:storage root.temp.macro_input
tag @s remove tcc.iceologer_ice_damage_source
