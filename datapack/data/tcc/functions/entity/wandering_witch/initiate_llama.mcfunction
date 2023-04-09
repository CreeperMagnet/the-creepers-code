############################################################
# Initiates the wandering witch trader llama
############################################################

data merge entity @s {DespawnDelay:47999,Tags:["tcc.modified_vanilla_entity","tcc.wandering_witch_llama","tcc.ten_second_clock"],DecorItem:{id:"minecraft:black_carpet",Count:1b},Variant:3,Tame:1b,ChestedHorse:1b,Strength:5}
data modify entity @s Leash.UUID set from storage tcc:storage root.temp.UUID
loot replace entity @s horse.0 loot tcc:chests/wandering_witch_llama
scoreboard players set @s tcc.dummy2 240