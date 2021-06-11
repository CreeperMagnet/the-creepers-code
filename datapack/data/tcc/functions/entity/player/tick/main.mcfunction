############################################################
# Description: Functions to run off every player every single tick
# Creator: CreeperMagnet_
############################################################

## Non-Spectator Stuff
execute if entity @s[gamemode=!spectator] run function tcc:entity/player/tick/non_spectators

# Emoji
execute if entity @s[tag=!tcc.emoji_mute] unless entity @s[scores={tcc.emoji=0}] run function tcc:entity/player/emoji

# Compendium trigger
execute if entity @s[scores={tcc.compendium=1..}] run function tcc:item/compendium
