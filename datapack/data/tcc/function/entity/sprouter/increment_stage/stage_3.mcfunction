# Sets the nbt to a specific stage

data modify entity @s ArmorItems[2].components."minecraft:custom_model_data".floats[0] set value 3.0f
tag @s remove tcc.sprouter.stage_2
tag @s add tcc.sprouter.stage_3