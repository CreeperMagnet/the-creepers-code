############################################################
# Checks if a player's UUID matches one in storage
############################################################

function tcc:item/boomerang/entity_interaction/player_uuid_match
#Fail Test
#execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set value 0
execute if entity @s[scores={tcc.dummy=0}] run function tcc:item/boomerang/entity_interaction/pickup/pickup
execute if entity @s[scores={tcc.dummy=1}] run function tcc:item/boomerang/entity_interaction/damage
