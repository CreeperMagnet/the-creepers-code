############################################################
# Summons a cured jeweler
############################################################

data remove storage tcc:storage root.temp.zombie_data
data modify storage tcc:storage root.temp.zombie_data set from entity @s {}
summon villager ~ ~ ~ {Tags:["tcc.newly_spawned_jeweler"]}
playsound minecraft:entity.zombie_villager.converted neutral @a[distance=..16]
execute as @e[tag=tcc.newly_spawned_jeweler,limit=1] run function tcc:entity/jeweler/zombie/set_cured_tags
tp @s ~ ~-1000 ~
