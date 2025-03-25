# Makes the baby grow up

tag @s remove tcc.baby
scoreboard players reset @s tcc.dummy2
attribute @s minecraft:scale base set 2.0
attribute @s minecraft:max_health base set 40.0
data modify entity @s Health set value 40.0f
data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[1] set value false
data remove entity @s Offers.Recipes