############################################################
# Summons a cured archaeologist
############################################################

data remove storage tcc:storage root.temp.zombie_data
data modify storage tcc:storage root.temp.zombie_data set from entity @s {}
playsound minecraft:entity.zombie_villager.converted neutral @a[distance=..16]
execute summon villager run function tcc:entity/archaeologist/zombie/set_cured_tags
tp @s ~ ~-1000 ~
