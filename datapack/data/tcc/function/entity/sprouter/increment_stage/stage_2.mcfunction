# Sets the nbt to a specific stage

data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data set value {head:330117,idle:330129,moving:330131}
tag @s remove tcc.sprouter.stage_1
tag @s add tcc.sprouter.stage_2