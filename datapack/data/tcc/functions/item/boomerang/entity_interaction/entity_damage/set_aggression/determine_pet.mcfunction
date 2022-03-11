############################################################
# Checks if an entity is tamed by the player
############################################################

data modify storage tcc:storage root.temp.UUID set from storage tcc:storage root.temp.boomerang.UUID
execute store success score #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.UUID set from entity @s Owner
execute unless score #temp_0 tcc.dummy matches 0 run tag @s add tcc.owned_pet
scoreboard players reset #temp_0 tcc.dummy
