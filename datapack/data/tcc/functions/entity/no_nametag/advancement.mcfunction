############################################################
# Functions to run when a player names an entity that isn't supposed to display a nametag
############################################################

execute as @e[team=tcc.no_nametag,distance=..7] run function tcc:entity/no_nametag/check
advancement revoke @s only tcc:technical/player_interacted_with_entity/name_no_nametag_entity