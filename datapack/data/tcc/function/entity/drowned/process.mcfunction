# Modifies a vanilla drowned

tag @s add tcc.modified_vanilla_entity
execute if entity @s[predicate=tcc:entity_properties/slots/weapon.mainhand/air,predicate=tcc:random_chance/0.05] run return run function tcc:entity/drowned/give_swordfish
execute if entity @s[predicate=tcc:entity_properties/slots/air_in_hands_and_head] run function tcc:entity/drowned/coral/main
