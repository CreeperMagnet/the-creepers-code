# Sets the nbt to a specific stage

data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data set value {head:330117,idle:330125,moving:330127}
tag @s remove tcc.sprouter.stage_0
tag @s add tcc.sprouter.stage_1