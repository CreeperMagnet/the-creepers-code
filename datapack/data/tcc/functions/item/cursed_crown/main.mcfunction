############################################################
# Turns a mob drop into GOLDDDD
############################################################

execute if entity @s[gamemode=!creative] run function tcc:item/durability/damage_generic_amount/head_1
tag @s[advancements={tcc:technical/multiple_trigger_types/cursed_crown_damage={killed_entity=true}}] add tcc.scheduled.cursed_crown
execute if entity @s[advancements={tcc:technical/multiple_trigger_types/cursed_crown_damage={killed_entity=true}}] run schedule function tcc:item/cursed_crown/schedule 1t append
advancement revoke @s only tcc:technical/multiple_trigger_types/cursed_crown_damage
