############################################################
# Schedules a function for improper wandering trader glowing
############################################################

schedule function tcc:entity/trader_entity/improper_glowing/remove 1t replace
advancement revoke @s only tcc:technical/player_hurt_entity/hit_trader_entity_with_glowing
