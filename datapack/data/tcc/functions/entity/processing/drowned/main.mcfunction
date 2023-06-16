############################################################
# Modifies a vanilla drowned
############################################################

execute if entity @s[predicate=tcc:entity/holding/nothing_mainhand,predicate=tcc:chance/one_twentieth] run function tcc:entity/processing/drowned/holding_nothing
execute if entity @s[predicate=tcc:entity/holding/nothing_and_nothing_on_head] run function tcc:entity/processing/drowned/coral/main
