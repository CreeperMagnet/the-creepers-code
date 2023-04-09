############################################################
# Damages an entity for 4.0 and includes the player in their death message
############################################################

execute as @a run function tcc:item/boomerang/entity_interaction/player_uuid_match
damage @s 4.0 tcc:boomerang by @p[scores={tcc.dummy=0},sort=nearest,limit=1]