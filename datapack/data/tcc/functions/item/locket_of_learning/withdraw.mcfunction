############################################################
# Description: Takes experience from the locket
# Creator: ChromaKey
############################################################

# decrements the score by 1, to later store back into the locket data
scoreboard players remove @s tcc.dummy 1

# gives the player 7 points
experience add @s 31 points
summon minecraft:experience_orb

# run ending function
execute in minecraft:overworld run function tcc:item/locket_of_learning/end
