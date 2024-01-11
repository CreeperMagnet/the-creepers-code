# Ticking for decorated pots

execute unless entity @s[scores={tcc.dummy2=1..}] unless block ~ ~ ~ decorated_pot run function tcc:block/decorated_pot/break/main

execute if score @s tcc.dummy2 matches 1 run function tcc:block/decorated_pot/interact/reset_barrier_to_pot with entity @s item.tag.pot_data
scoreboard players remove @s[scores={tcc.dummy2=1..}] tcc.dummy2 1