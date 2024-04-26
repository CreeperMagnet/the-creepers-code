# Makes the baby grow up

tag @s remove tcc.baby
data modify entity @s Attributes[{Name:"minecraft:generic.scale"}].Base set value 0.5
scoreboard players reset @s tcc.dummy2