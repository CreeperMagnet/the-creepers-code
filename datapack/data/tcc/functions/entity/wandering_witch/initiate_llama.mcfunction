############################################################
# Initiates the wandering witch trader llama
############################################################

tag @s remove tcc.wandering_witch_llama.newly_spawned
data modify entity @s Leash.UUID set from storage tcc:storage root.temp.UUID
loot replace entity @s horse.0 loot tcc:chests/wandering_witch_llama
scoreboard players set @s tcc.dummy2 240