# Modifies a vanilla drowned

execute if entity @s[predicate=tcc:entity_properties/slots/weapon.mainhand/air,predicate=tcc:random_chance/0.05] run function tcc:entity/processing/drowned/give_swordfish
execute if entity @s[predicate=tcc:entity_properties/slots/air_in_hands_and_head] run function tcc:entity/processing/drowned/coral/main
