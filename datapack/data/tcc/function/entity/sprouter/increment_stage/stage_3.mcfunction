# Sets the nbt to a specific stage

data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data set value {head:330117,idle:330133,moving:330135}
tag @s remove tcc.sprouter.stage_2
tag @s add tcc.sprouter.stage_3