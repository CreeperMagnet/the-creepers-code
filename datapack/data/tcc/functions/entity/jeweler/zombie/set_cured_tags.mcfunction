############################################################
# Sets the initial tags of a cured jeweler
############################################################

function tcc:entity/jeweler/set_initial_tags
data modify entity @s VillagerData set from storage tcc:storage root.temp.zombie_data.VillagerData
data modify entity @s Xp set from storage tcc:storage root.temp.zombie_data.Xp
data modify entity @s NoAI set from storage tcc:storage root.temp.zombie_data.NoAI
data modify entity @s Gossips append value {Target: [I; 0, 0, 0, 0], Type: "major_positive", Value: 20}
data modify entity @s Gossips[-1].Target set from storage tcc:storage root.temp.zombie_data.ConversionPlayer
data modify entity @s VillagerData.profession set value "minecraft:fisherman"
data modify entity @s[nbt={Xp:0}] Xp set value 1
data modify entity @s Offers.Recipes set from storage tcc:storage root.temp.zombie_data.Offers.Recipes
tag @s remove tcc.newly_spawned_jeweler
