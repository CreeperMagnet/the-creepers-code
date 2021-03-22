############################################################
# Description: Takes experience from the locket
# Creator: ChromaKey
############################################################

# decrements the score by 1, to later store back into the locket data
scoreboard players remove @s tcc.dummy 1

# gives the player 31 points
summon minecraft:experience_orb ~ ~ ~ {Value:31s}

# run ending function
function tcc:item/locket_of_learning/end
