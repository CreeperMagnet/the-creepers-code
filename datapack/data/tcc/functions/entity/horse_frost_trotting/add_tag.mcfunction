############################################################
# Commands to run off players on horses with frost walker boots
############################################################

tag @s add tcc.on_horse
tag @s[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] add tcc.on_skeleton_horse
advancement revoke @s only tcc:technical/player_interacted_with_entity/ride_horse_frost_trotting
