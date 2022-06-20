############################################################
# Makes the end crystal heal players
############################################################

effect give @s[nbt=!{ActiveEffects:[{Id:10}]}] regeneration 10 0 true
particle dragon_breath ~ ~ ~ 0.2 1 0.2 0.01 5 force
