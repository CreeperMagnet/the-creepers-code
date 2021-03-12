############################################################
# Description: Checks if an entity is tamed by the player
# Creator: ChromaKey
############################################################

data modify storage tcc:storage root.temp.UUID set from storage tcc:storage root.temp.boomerang.owner
execute store success score tcc.temp_0 tcc.dummy run data modify storage tcc:storage root.temp.UUID set from entity @s Owner
execute unless score tcc.temp_0 tcc.dummy matches 0 run tag @s add tcc.owned_pet
scoreboard players reset tcc.temp_0