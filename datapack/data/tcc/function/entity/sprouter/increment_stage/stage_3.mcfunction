# Sets the nbt to a specific stage

data modify entity @s equipment.chest.components."minecraft:custom_model_data".floats[0] set value 3.0f
data remove entity @s Offers.Recipes
tag @s remove tcc.sprouter.stage_2
tag @s add tcc.sprouter.stage_3