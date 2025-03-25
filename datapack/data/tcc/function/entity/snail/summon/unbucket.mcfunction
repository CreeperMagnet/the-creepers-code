# Initiates the proper data for a newly spawned snail from a bucket

data modify entity @s {} merge from storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc.snail
data modify entity @s Invulnerable set value 1b
execute store result score @s[tag=!tcc.baby] tcc.dummy2 run data get storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc.snail_boost_timer
execute store result score @s[tag=tcc.baby] tcc.dummy2 run data get storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc.age
execute at @s[scores={tcc.dummy2=1..},tag=!tcc.baby] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if data storage tcc:temp root.snail_bucket.components."minecraft:custom_name" run data modify entity @s equipment.chest.components."minecraft:custom_name" set from storage tcc:temp root.snail_bucket.components."minecraft:custom_name"
execute if data storage tcc:temp root.snail_bucket.components."minecraft:custom_name" run data modify entity @s CustomName set from storage tcc:temp root.snail_bucket.components."minecraft:custom_name"
data remove entity @s Offers.Recipes
data remove storage tcc:temp root
