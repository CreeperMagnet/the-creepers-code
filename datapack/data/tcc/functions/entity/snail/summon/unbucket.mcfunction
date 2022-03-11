############################################################
# Initiates the proper data for a newly spawned snail from a bucket
############################################################

data modify entity @s {} merge from storage tcc:storage root.temp.snail_bucket.tag.tcc.snail
execute store result score @s tcc.dummy2 run data get storage tcc:storage root.temp.snail_bucket.tag.tcc.snail_boost_timer
execute at @s[scores={tcc.dummy2=1..}] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if data storage tcc:storage root.temp.snail_bucket.tag.display{Name:'{"text":"Gary"}'} run function tcc:entity/snail/summon/set_variant/gary
execute unless data storage tcc:storage root.temp.snail_bucket.tag.display{Name:'{"italic":false,"translate":"item.tcc.snail_bucket"}'} run data modify entity @s CustomName set from storage tcc:storage root.temp.snail_bucket.tag.display.Name
data remove storage tcc:storage root.temp
