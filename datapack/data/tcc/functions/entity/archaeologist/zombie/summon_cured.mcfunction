############################################################
# Summons a cured archaeologist
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.zombie_data set from entity @s {}
playsound minecraft:entity.zombie_villager.converted neutral @a[distance=..16]
data modify storage tcc:storage root.temp.macro_input.UUID set from storage tcc:storage root.temp.zombie_data.ConversionPlayer
execute summon villager run function tcc:entity/archaeologist/zombie/set_cured_tags with storage tcc:storage root.temp.macro_input
tp @s ~ ~-1000 ~
