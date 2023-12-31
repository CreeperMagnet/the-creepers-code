############################################################
# Makes diluted potions function
############################################################

scoreboard players set @s tcc.dummy 0
execute if entity @s[predicate=tcc:entity/holding/diluted_potion/mainhand] run function tcc:item/diluted_potion/mainhand/check_potion
execute if entity @s[predicate=!tcc:entity/holding/diluted_potion/mainhand,predicate=tcc:entity/holding/diluted_potion/offhand] run function tcc:item/diluted_potion/offhand/check_potion
