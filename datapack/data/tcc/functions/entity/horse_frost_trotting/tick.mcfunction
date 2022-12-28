############################################################
# Commands to run off players on horses with frost walker boots
############################################################

execute if entity @s[predicate=tcc:entity/wearing/frost_walker_boots,predicate=tcc:entity/moving,nbt={RootVehicle:{Entity:{OnGround:1b}}}] run function tcc:entity/horse_frost_trotting/check_skeleton
execute unless data entity @s RootVehicle run function tcc:entity/horse_frost_trotting/remove_tag