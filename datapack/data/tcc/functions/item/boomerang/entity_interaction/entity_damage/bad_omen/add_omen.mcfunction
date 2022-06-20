############################################################
# Adds a level of bad omen to the player
############################################################

execute if data entity @s ActiveEffects[{Id:31,Amplifier:3b}] run effect give @s bad_omen 6000 4
execute if data entity @s ActiveEffects[{Id:31,Amplifier:2b}] run effect give @s bad_omen 6000 3
execute if data entity @s ActiveEffects[{Id:31,Amplifier:1b}] run effect give @s bad_omen 6000 2
execute if data entity @s ActiveEffects[{Id:31,Amplifier:0b}] run effect give @s bad_omen 6000 1
execute unless data entity @s ActiveEffects[{Id:31}] run effect give @s bad_omen 6000
