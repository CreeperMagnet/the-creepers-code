# Summons a cured archaeologist

data remove storage tcc:temp root
data modify storage tcc:temp root.zombie_data set from entity @s {}
playsound minecraft:entity.zombie_villager.converted neutral @a[distance=..16]
data modify storage tcc:temp root.macro_input.UUID set from storage tcc:temp root.zombie_data.ConversionPlayer
execute summon minecraft:villager run function tcc:entity/archaeologist/zombie/set_cured_tags with storage tcc:temp root.macro_input
tp @s ~ ~-1000 ~
