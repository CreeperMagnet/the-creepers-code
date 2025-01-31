# Ticks a living entity with a wandering trader base

# custom_model_data.flags[0] = hurt
# custom_model_data.flags[1] = moving

item replace entity @s weapon.mainhand from entity @s armor.chest
item modify entity @s[predicate=tcc:entity_properties/animated_trader_entity] weapon.mainhand {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":1,"values":[true]}}

execute store result score @s tcc.dummy run data get entity @s HurtTime
execute unless score @s tcc.dummy matches 0 run return run function tcc:entity/trader_entity/hurt

# we do not reset the hurt state of the mainhand because that is already done by resetting the item on the data modify command above
item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}