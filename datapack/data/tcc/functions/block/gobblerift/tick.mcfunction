############################################################
# Commands to run every tick for gobblerifts
############################################################

execute unless predicate tcc:block/gobblerift_valid run function tcc:block/gobblerift/break/main
execute if entity @s[scores={tcc.dummy2=1..}] run function tcc:block/gobblerift/attack/tickdown