############################################################
# Main digesting phases for gobblerift
############################################################

# 90 = 15 minutes (900 seconds, 10 seconds x 90)
execute if entity @s[scores={tcc.dummy2=90..}] run function tcc:block/gobblerift/set_state/juice_ready
scoreboard players add @s tcc.dummy2 1