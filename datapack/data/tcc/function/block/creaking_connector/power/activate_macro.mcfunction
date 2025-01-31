# Activates with a specific sapling type input


# Update observers
data modify storage tcc:temp root.block_data set from block ~ ~ ~
setblock ~ ~ ~ minecraft:stone
setblock ~ ~ ~ minecraft:furnace
data modify block ~ ~ ~ {} merge from storage tcc:temp root.block_data

# Make sure saplink gets proper feedback
data modify storage tcc:temp root.success set value 1b
execute if score @s tcc.dummy2 matches 1.. run return 0

# Update comparator output
loot replace block ~ ~ ~ container.0 loot tcc:technical/creaking_connector_comparator_output
item replace block ~ ~ ~ container.1 with minecraft:stick
data modify storage tcc:temp root.loot_item set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage tcc:temp root.loot_item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage tcc:temp root.loot_item
$function tcc:block/creaking_connector/power/comparator_output/$(wood_type)

# VFX
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_all","values":[true]}}
playsound tcc:block.creaking_connector.turn_on block @a[distance=..16] ~ ~0.5 ~

# Cooldown
data modify storage tcc:temp root.success_cooldown set value 1b
scoreboard players set @s tcc.dummy2 20