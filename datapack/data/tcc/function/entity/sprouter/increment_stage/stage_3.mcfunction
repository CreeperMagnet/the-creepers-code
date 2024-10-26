# Sets the nbt to a specific stage

data modify entity @s ArmorItems[2].components."minecraft:item_model" set value "tcc:entity/sprouter/body/stage_3/main"
tag @s remove tcc.sprouter.stage_2
tag @s add tcc.sprouter.stage_3