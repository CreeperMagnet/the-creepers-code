# Functions to run off every player every single tick

## Non-Spectator Stuff
execute if entity @s[gamemode=!spectator] run function tcc:entity/player/tick/non_spectators

# Emoji
execute unless score @s tcc.emoji matches 0 if entity @s[tag=!tcc.emoji_mute] run function tcc:entity/player/emoji
