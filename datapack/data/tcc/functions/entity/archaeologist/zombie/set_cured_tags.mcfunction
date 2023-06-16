############################################################
# Sets the initial tags of a cured archaeologist
############################################################

function tcc:entity/archaeologist/set_initial_tags
data modify entity @s VillagerData set from storage tcc:storage root.temp.zombie_data.VillagerData
data modify entity @s Xp set from storage tcc:storage root.temp.zombie_data.Xp
data modify entity @s NoAI set from storage tcc:storage root.temp.zombie_data.NoAI
# tag = has major
tag @s remove tcc.tag
# tag2 = has minor
tag @s remove tcc.tag2
data modify storage tcc:storage root.temp.final_gossips set value []
execute if data storage tcc:storage root.temp.zombie_data.Gossips[0] run function tcc:entity/archaeologist/zombie/cure_discount/loop

execute if entity @s[tag=!tcc.tag] run data modify storage tcc:storage root.temp.final_gossips append value {Target: [I; 0, 0, 0, 0], Type: "major_positive", Value: 20}
execute if entity @s[tag=!tcc.tag2] run data modify storage tcc:storage root.temp.final_gossips append value {Target: [I; 0, 0, 0, 0], Type: "minor_positive", Value: 25}

data modify storage tcc:storage root.temp.final_gossips[{Target:[I; 0, 0, 0, 0]}].Target set from storage tcc:storage root.temp.zombie_data.ConversionPlayer

data modify entity @s Gossips set from storage tcc:storage root.temp.final_gossips
data modify entity @s VillagerData.profession set value "minecraft:fisherman"
data modify entity @s[nbt={Xp:0}] Xp set value 1
data modify entity @s Offers.Recipes set from storage tcc:storage root.temp.zombie_data.Offers.Recipes
tag @s remove tcc.tag
tag @s remove tcc.tag2