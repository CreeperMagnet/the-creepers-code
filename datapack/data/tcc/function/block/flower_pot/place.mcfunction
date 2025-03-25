# Summons an entity for nether brick flower pot

data remove storage tcc:temp root.macro_input
execute if predicate tcc:entity_properties/slots/weapon.mainhand/custom_flower_pot run data modify storage tcc:temp root.macro_input.type set from entity @s SelectedItem.components."minecraft:custom_data".tcc.type
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/custom_flower_pot run data modify storage tcc:temp root.macro_input.type set from entity @s equipment.offhand.components."minecraft:custom_data".tcc.type

item modify entity @s[gamemode=!creative,predicate=!tcc:entity_properties/slots/weapon.mainhand/custom_flower_pot] weapon.offhand tcc:reduce_count
item modify entity @s[gamemode=!creative,predicate=tcc:entity_properties/slots/weapon.mainhand/custom_flower_pot] weapon.mainhand tcc:reduce_count

function tcc:block/flower_pot/summon_macro with storage tcc:temp root.macro_input
setblock ~ ~ ~ minecraft:flower_pot destroy
scoreboard players reset @s tcc.dummy
playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 0.8