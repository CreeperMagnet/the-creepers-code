# Makes the baby grow up

tag @s remove tcc.baby
scoreboard players reset @s tcc.dummy2
attribute @s minecraft:scale base set 2.0
attribute @s minecraft:max_health base set 40.0
data modify entity @s Health set value 40.0f
data modify entity @s ArmorItems[3].components."minecraft:item_model" set value "tcc:entity/sprouter/head/adult/main"