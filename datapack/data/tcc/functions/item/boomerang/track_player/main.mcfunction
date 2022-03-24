############################################################
# Boomerang tracking algorithm
############################################################

# Store the UUID for checking against the player
data modify storage tcc:storage root.temp.boomerang.UUID set from entity @s ArmorItems[3].tag.tcc.UUID

# Face towards the player that matches the proper UUID requirements
execute as @a[gamemode=!spectator,distance=..55,nbt=!{Health:0.0f}] run function tcc:item/boomerang/track_player/uuid_check
execute positioned ^ ^0.5 ^0.05 facing entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0.0f},scores={tcc.dummy=0}] eyes run function tcc:item/boomerang/track_player/teleport

# Exception for if there is no player
execute if entity @s[tag=!tcc.boomerang.turned] unless entity @p[distance=..55,scores={tcc.dummy=0}] run function tcc:item/boomerang/track_player/no_player

# Reset
scoreboard players reset @a[distance=..55] tcc.dummy
