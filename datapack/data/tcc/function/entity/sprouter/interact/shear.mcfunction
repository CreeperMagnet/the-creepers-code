# Commands to run for shearing a sprouter

scoreboard players reset @s tcc.dummy2
data modify entity @s equipment.chest.components."minecraft:custom_model_data".floats[0] set value 0.0f
data remove entity @s Offers.Recipes
loot spawn ~ ~ ~ loot tcc:shearing/sprouter
tag @s remove tcc.sprouter.stage_3
tag @s add tcc.sprouter.stage_0
playsound tcc:entity.sprouter.shear neutral @a[distance=..16]