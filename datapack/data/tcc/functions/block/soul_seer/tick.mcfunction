############################################################
# Commands to break a soul seer
############################################################

execute unless block ~ ~ ~ dropper run function tcc:block/soul_seer/break/main
scoreboard players remove @s[scores={tcc.dummy2=1..}] tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=0}] run function tcc:block/soul_seer/unglow