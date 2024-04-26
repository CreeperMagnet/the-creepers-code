# Initiates the proper data for a newly spawned snail

tag @s remove tcc.snail.start
tp @s ~ ~ ~
execute if data storage tcc:temp root.baby run function tcc:entity/snail/summon/set_baby_tags
execute unless data storage tcc:temp root.snail_bucket if predicate tcc:random_chance/0.5 run tp @s ~0.1 ~ ~
execute store result entity @s Rotation[0] float 0.1 run random value -1800..1800
data modify entity @s Offers.Recipes set value []
execute if data storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc.variant run return run function tcc:entity/snail/summon/set_variant_from_bucket_macro with storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc
execute unless data storage tcc:temp root.snail_bucket run function tcc:entity/snail/summon/set_variant
execute if data storage tcc:temp root.snail_bucket run function tcc:entity/snail/summon/unbucket
