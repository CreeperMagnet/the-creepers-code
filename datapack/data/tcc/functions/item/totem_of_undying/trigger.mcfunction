############################################################
# Improves function of the totem of undying
############################################################

effect give @s[predicate=tcc:entity/holding/totem_of_undying,advancements={tcc:technical/multiple_trigger_types/totem_of_undying={void_damage=true}},nbt=!{ActiveEffects:[{Id:25}]}] instant_damage 1 100 true
tag @s[advancements={tcc:technical/multiple_trigger_types/totem_of_undying={used_totem=true}}] add tcc.scheduled.totem_of_undying
execute if entity @s[advancements={tcc:technical/multiple_trigger_types/totem_of_undying={used_totem=true}}] run schedule function tcc:item/totem_of_undying/schedule 1t
advancement revoke @s only tcc:technical/multiple_trigger_types/totem_of_undying
