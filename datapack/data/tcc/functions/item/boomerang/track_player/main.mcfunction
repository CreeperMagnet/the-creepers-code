# Boomerang tracking algorithm

# Face towards the player that matches the proper UUID requirements
$execute positioned ^ ^0.5 ^0.05 facing entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0f},nbt={UUID:$(UUID)}] eyes run function tcc:item/boomerang/track_player/teleport

# Exception for if there is no player
$execute if entity @s[tag=!tcc.boomerang.turned] unless entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0f},nbt={UUID:$(UUID)}] run function tcc:item/boomerang/track_player/no_player