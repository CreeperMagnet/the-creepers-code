############################################################
# Commands to run off players on horses with frost walker boots
############################################################

execute if entity @s[predicate=tcc:entity/wearing/frost_walker_boots,predicate=tcc:entity/moving,nbt=!{RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] positioned ~ ~-1.84 ~ if block ~ ~1.84 ~ air positioned ~-3 ~-0.1 ~-3 run function tcc:entity/horse_frost_trotting/fill_check
execute if entity @s[predicate=tcc:entity/wearing/frost_walker_boots,predicate=tcc:entity/moving,nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] positioned ~ ~-1.65 ~ if block ~ ~1.65 ~ air positioned ~-3 ~-0.1 ~-3 run function tcc:entity/horse_frost_trotting/fill_check
execute unless data entity @s RootVehicle run tag @s remove tcc.on_horse
