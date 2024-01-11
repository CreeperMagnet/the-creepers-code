# Commands to run off players on horses with frost walker boots

execute if entity @s[predicate=tcc:entity/wearing/frost_walker_boots,predicate=tcc:entity/moving,nbt={RootVehicle:{Entity:{OnGround:1b,Tame:1b}}}] on vehicle at @s positioned ~-3 ~-1 ~-3 unless entity @e[dx=6,dz=6,type=!#tcc:frost_trotting_ignore,tag=!smithed.entity] run fill ~ ~ ~ ~6 ~ ~6 minecraft:frosted_ice replace minecraft:water[level=0]
execute unless data entity @s RootVehicle run tag @s remove tcc.on_horse