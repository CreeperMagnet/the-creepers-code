# Makes animations and such for a spell-casting cycle

scoreboard players set @s tcc.dummy2 0
tag @s add tcc.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value true
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier add tcc:slowness -100 add_value
