############################################################
# Description: Removes resistance and re-adds
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.resistance_storage[0].Amplifier 1
execute store result score tcc.temp_1 tcc.dummy run data get storage tcc:storage root.temp.resistance_storage[0].Duration 0.05
execute store result score tcc.temp_2 tcc.dummy run data get storage tcc:storage root.temp.resistance_storage[0].ShowParticles 1
data remove storage tcc:storage root.temp.resistance_storage[0]
effect clear @s resistance
execute if score tcc.temp_0 tcc.dummy matches 0 run function tcc:entity/player/damage/reapply_resistance/0
execute if score tcc.temp_0 tcc.dummy matches 1 run function tcc:entity/player/damage/reapply_resistance/1
execute if score tcc.temp_0 tcc.dummy matches 2 run function tcc:entity/player/damage/reapply_resistance/2
execute if score tcc.temp_0 tcc.dummy matches 3 run function tcc:entity/player/damage/reapply_resistance/3
