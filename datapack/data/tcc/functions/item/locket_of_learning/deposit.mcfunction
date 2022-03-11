############################################################
# Stores experience into the locket
############################################################

# increments the score by 1, to later store back into the locket data
scoreboard players add @s tcc.dummy 1

# takes 7 points from the player
experience add @s -31 points
playsound tcc:item.locket_of_learning.deposit player @a[distance=..16]
advancement grant @s only tcc:minecraft/adventure/obtain_locket_of_learning

# run ending function
function tcc:item/locket_of_learning/end
