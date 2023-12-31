############################################################
# Initiates the proper data for a newly spawned snail
############################################################

tp @s ~ ~ ~
execute if predicate tcc:random_chance/0.5 run tp @s ~0.1 ~ ~
execute store result entity @s Rotation[0] float 0.1 run random value -1800..1800
data remove entity @s Offers.Recipes
execute unless data storage tcc:storage root.temp.snail_bucket run function tcc:entity/snail/summon/set_variant
execute if data storage tcc:storage root.temp.snail_bucket run function tcc:entity/snail/summon/unbucket
tag @s remove tcc.snail.start
