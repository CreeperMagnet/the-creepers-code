# Sets the nbt to a specific stage

data modify entity @s equipment.chest.components."minecraft:custom_model_data".floats[0] set value 1.0f
data remove entity @s Offers.Recipes
tag @s remove tcc.sprouter.stage_0
tag @s add tcc.sprouter.stage_1