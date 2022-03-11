############################################################
# Commands to run only if HurtTime is 9s
############################################################

execute if entity @s[tag=!tcc.silent] run function tcc:entity/trader_entity/sounds/hurt
execute if entity @s[tag=tcc.gobblerift] run function tcc:block/gobblerift/hurt