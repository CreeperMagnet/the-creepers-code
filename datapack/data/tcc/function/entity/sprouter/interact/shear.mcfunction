# Commands to run for shearing a sprouter

scoreboard players reset @s tcc.dummy2
data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data set value {head:330117,idle:330121,moving:330123}
loot spawn ~ ~ ~ loot tcc:shearing/sprouter
tag @s remove tcc.sprouter.stage_3
tag @s add tcc.sprouter.stage_0
playsound tcc:entity.sprouter.shear neutral @a[distance=..16]