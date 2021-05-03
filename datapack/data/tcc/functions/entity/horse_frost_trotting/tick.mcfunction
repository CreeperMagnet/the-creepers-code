############################################################
# Description: Commands to run off players on horses with frost walker boots
# Creator: CreeperMagnet_
############################################################

execute if entity @s[predicate=tcc:holding/wearing_frost_walker_boots,predicate=tcc:moving,nbt=!{RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] positioned ~ ~-1.84 ~ if block ~ ~1.84 ~ air positioned ~-3 ~-0.1 ~-3 unless entity @e[dx=6,dz=6,dy=0,type=!#tcc:frost_trotting_ignore,tag=!global.ignore] positioned ~3 ~0.1 ~3 run fill ~-3 ~ ~-3 ~3 ~ ~3 frosted_ice replace water[level=0]
execute if entity @s[predicate=tcc:holding/wearing_frost_walker_boots,predicate=tcc:moving,nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] positioned ~ ~-1.65 ~ if block ~ ~1.65 ~ air positioned ~-3 ~-0.1 ~-3 unless entity @e[dx=6,dz=6,dy=0,type=!#tcc:frost_trotting_ignore,tag=!global.ignore] positioned ~3 ~0.1 ~3 run fill ~-3 ~ ~-3 ~3 ~ ~3 frosted_ice replace water[level=0]
execute unless data entity @s RootVehicle run tag @s remove tcc.frost_trotting
