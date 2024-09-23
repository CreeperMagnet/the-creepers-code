# Makes the baby grow up

tag @s remove tcc.baby
scoreboard players reset @s tcc.dummy2
attribute @s minecraft:generic.scale base set 2.0
attribute @s generic.max_health base set 40.0
data modify entity @s Health set value 40.0f
data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 330117
data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.head set value 330117