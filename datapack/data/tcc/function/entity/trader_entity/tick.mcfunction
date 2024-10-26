# Ticks a living entity with a wandering trader base

# If this line does not exist, the trader starts shaking uncontrollably
item replace entity @s weapon.mainhand with minecraft:shears

data modify entity @s HandItems[0] set from entity @s ArmorItems[2]
item modify entity @s[predicate=tcc:entity_properties/animated_trader_entity] weapon.mainhand {"function":"set_custom_model_data","value":1}

execute store result score @s tcc.dummy run data get entity @s HurtTime
execute unless score @s tcc.dummy matches 0 run return run function tcc:entity/trader_entity/hurt

# "damage" is inverted because mojang smells—"1" is full durability, "0" is fully broken
# we do not reset the damage of the mainhand because that is already done by resetting the item on the second command above
item modify entity @s armor.head {"function":"set_damage","damage":1}