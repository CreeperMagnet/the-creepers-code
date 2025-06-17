# Rotates the player if they're hit by a wrench

rotate @s ~180 ~
playsound tcc:item.wrench.rotate_block block @a[distance=..16]
advancement revoke @s only tcc:technical/entity_hurt_player/entity_holding_wrench