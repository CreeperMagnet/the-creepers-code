############################################################
# Description: Makes obsidian mirrors flip effects
# Creator: CreeperMagnet_
############################################################

## two-way effects
# [speed - slowness]
# [haste - mining fatigue]
# [strength - weakness]
# [blindness - night vision]
# [regeneration - poison]
# [glowing - invisibility]
# [levitation - slow falling]
# [luck - bad luck]
# [fire resistance - water breathing]

## one-way effects
# jump boost - slowness
# nausea - night vision
# dolphin's grace - slowness
# wither - regeneration
# health boost - poison
# absorption - poison
# resistance - wither
# hunger - saturation

## Forbidden effects
# saturation: instant
# conduit power: beacony effect
# instant health - instant damage: no flipping instants
# bad omen - hero of the village: overpowered


data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.effects set from entity @s ActiveEffects
data remove storage tcc:storage root.temp.effects[{Ambient:1b}]
data remove storage tcc:storage root.temp.effects[{ShowParticles:0b}]
data remove storage tcc:storage root.temp.effects[{ShowIcon:0b}]
# Disallow healing, harming, saturation, conduit power, bad omen, and hero of the village
data remove storage tcc:storage root.temp.effects[{Id:6b}]
data remove storage tcc:storage root.temp.effects[{Id:7b}]
data remove storage tcc:storage root.temp.effects[{Id:23b}]
data remove storage tcc:storage root.temp.effects[{Id:29b}]
data remove storage tcc:storage root.temp.effects[{Id:31b}]
data remove storage tcc:storage root.temp.effects[{Id:32b}]
execute if data storage tcc:storage root.temp.effects[0] run function tcc:item/obsidian_mirror/flip
