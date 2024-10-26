# Sets the nbt to a specific stage

data modify entity @s ArmorItems[2].components."minecraft:item_model" set value "tcc:entity/sprouter/body/stage_1/main"
tag @s remove tcc.sprouter.stage_0
tag @s add tcc.sprouter.stage_1