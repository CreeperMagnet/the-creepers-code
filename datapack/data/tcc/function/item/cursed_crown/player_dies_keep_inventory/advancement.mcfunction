# Commands for ensuring that on respawn, players still wearing a cursed crown get their health updated properly

tag @s add tcc.cursed_crown_respawn
advancement revoke @s only tcc:technical/entity_hurt_player/player_dies_with_cursed_crown
