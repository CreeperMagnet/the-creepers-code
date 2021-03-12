############################################################
# Description: Improves function of the totem of undying
# Creator: CreeperMagnet_
############################################################

execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:totem_of_undying"}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] run effect give @s[advancements={tcc:technical/item/totem_of_undying={void_damage=true}},nbt=!{ActiveEffects:[{Id:25b}]}] instant_damage 1 100 true
tag @s[advancements={tcc:technical/item/totem_of_undying={used_totem=true}}] add tcc.scheduled.totem_of_undying
execute if entity @s[advancements={tcc:technical/item/totem_of_undying={used_totem=true}}] run schedule function tcc:item/totem_of_undying/effects 1t
advancement revoke @s only tcc:technical/item/totem_of_undying
