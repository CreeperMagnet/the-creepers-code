############################################################
# Checks if a player's UUID matches one in storage
############################################################

scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.boomerang.UUID2 set from storage tcc:storage root.temp.boomerang.UUID
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set from entity @s UUID
execute if entity @s[scores={tcc.dummy=0}] run function tcc:item/boomerang/entity_interaction/entity_damage/bad_omen/add_omen
