############################################################
# Mainhand for diluted potions
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
function tcc:item/diluted_potion/check_potion
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:item/diluted_potion/mainhand/modify_durability