# Sets the faces of the decorated pot's passenger

scoreboard players set @s tcc.dummy 330000
scoreboard players operation @s tcc.dummy += #temp_6 tcc.dummy
scoreboard players operation #temp_7 tcc.dummy *= #100 tcc.dummy
scoreboard players operation @s tcc.dummy += #temp_7 tcc.dummy
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s tcc.dummy