# Checks potion data and such based on macro input

data remove storage tcc:temp root
$data modify storage tcc:temp root.item set from entity @s $(slot_raw)
scoreboard players set @s tcc.dummy 0
function tcc:item/diluted_potion/attempt_effect_application
# If you didn't apply any effects, return.
execute if entity @s[scores={tcc.dummy=0}] run return 0
# Play the drink sound even if in creative mode
playsound minecraft:entity.generic.drink player @a[distance=..16] ~ ~ ~ 1 1.3
# If in creative mode, don't run the item modification code.
execute if entity @s[gamemode=creative] run return 0


## Item modification code

# Decrements the uses on the bottle
scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.uses[0]
execute store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.uses[0] int 1 run scoreboard players remove @s tcc.dummy 1
# If there are no uses left, empty the bottle and don't run any of the rest of the code
$execute if score @s tcc.dummy matches 0 run return run item replace entity @s $(slot) with minecraft:glass_bottle

# Only increment the CMD if the uses on the bottle are >10 (instant health exception)
execute if score @s tcc.dummy matches ..9 run function tcc:item/diluted_potion/decrement_custom_model_data

# Update the item
$data modify storage tcc:temp root.item.slot set value "$(slot)"
function tcc:technical/macros/loot/replace with storage tcc:temp root.item

# Updates the "uses" lore on the item
$execute unless data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.multiline_lore run item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.tcc.diluted_potion.uses","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".tcc.potion.uses[0]","storage":"tcc:temp"},{"nbt":"root.item.components.\"minecraft:custom_data\".tcc.potion.uses[1]","storage":"tcc:temp"}],"color":"gray","italic":false}],"mode":"replace_section","offset":1}
$execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.multiline_lore run item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.tcc.diluted_potion.uses","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".tcc.potion.uses[0]","storage":"tcc:temp"},{"nbt":"root.item.components.\"minecraft:custom_data\".tcc.potion.uses[1]","storage":"tcc:temp"}],"color":"gray","italic":false}],"mode":"replace_section","offset":2}