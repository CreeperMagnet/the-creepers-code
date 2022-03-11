############################################################
# Initiates the proper data for a newly spawned snail
############################################################

scoreboard players set @s tcc.dummy 0
tp @s ~0.5 ~ ~0.5
execute if entity @s[scores={tcc.dummy=0}] at @s store success score @s tcc.dummy if predicate tcc:chance/one_half run tp @s ~0.2 ~ ~
execute if entity @s[scores={tcc.dummy=0}] at @s store success score @s tcc.dummy if predicate tcc:chance/one_half run tp @s ~ ~ ~0.2
execute if entity @s[scores={tcc.dummy=0}] at @s store success score @s tcc.dummy if predicate tcc:chance/one_half run tp @s ~-0.2 ~ ~
execute if entity @s[scores={tcc.dummy=0}] at @s store success score @s tcc.dummy if predicate tcc:chance/one_half run tp @s ~ ~ ~-0.2
execute store result score @s tcc.dummy run data get entity @s UUID[0]
scoreboard players operation @s tcc.dummy %= #180 tcc.dummy
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s tcc.dummy
data remove entity @s Offers.Recipes
execute unless data storage tcc:storage root.temp.snail_bucket run function tcc:entity/snail/summon/set_variant
execute if data storage tcc:storage root.temp.snail_bucket run function tcc:entity/snail/summon/unbucket
tag @s remove tcc.snail.start
