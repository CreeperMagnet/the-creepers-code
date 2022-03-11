############################################################
# Sets tags if xp orbs were found
############################################################

scoreboard players operation @s tcc.old_xp = @s tcc.current_xp
tag @s add tcc.saw_xp_orb
