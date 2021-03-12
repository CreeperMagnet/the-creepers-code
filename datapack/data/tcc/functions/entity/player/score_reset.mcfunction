############################################################
# Description: Resets block breaking scores for players
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s[scores={tcc.minebeets=1..}] tcc.minebeets
scoreboard players reset @s[scores={tcc.minewheat=1..}] tcc.minewheat
scoreboard players reset @s[scores={tcc.minecarrots=1..}] tcc.minecarrots
scoreboard players reset @s[scores={tcc.minepotatoes=1..}] tcc.minepotatoes
scoreboard players reset @s[scores={tcc.minewarts=1..}] tcc.minewarts
scoreboard players remove @s[scores={tcc.invul_timer=1..}] tcc.invul_timer 1