# Sets tags for a newly spawned baby snail

data modify entity @s attributes[{id:"minecraft:scale"}].base set value 0.25
data remove entity @s Offers.Recipes
scoreboard players set @s tcc.dummy2 1200
tag @s add tcc.baby