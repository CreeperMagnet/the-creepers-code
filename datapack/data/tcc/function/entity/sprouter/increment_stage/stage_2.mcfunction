# Sets the nbt to a specific stage

data modify entity @s ArmorItems[2].components."minecraft:item_model" set value "tcc:entity/sprouter/body/stage_2/main"
tag @s remove tcc.sprouter.stage_1
tag @s add tcc.sprouter.stage_2