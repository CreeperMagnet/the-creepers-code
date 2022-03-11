############################################################
# Increases the state of the brewing stand
############################################################

execute unless entity @s[scores={tcc.dummy2=1..}] run function tcc:block/brewing_stand/brewing/start
execute if entity @s[scores={tcc.dummy2=1..}] store result block ~ ~ ~ BrewTime short 1 run scoreboard players remove @s tcc.dummy2 1