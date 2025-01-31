# Runs when the saplink is right-clicked

data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/saplink run data modify storage tcc:temp root.item set from entity @s SelectedItem
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/saplink run data modify storage tcc:temp root.item set from entity @s Inventory[{Slot:-106b}]

data modify storage tcc:temp root.macro_input.id set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.saplink_id
data modify storage tcc:temp root.macro_input.wood_type set from storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0]

# Trim off the "minecraft:" namespace from the wood type
data modify storage tcc:temp root.macro_input.wood_type set string storage tcc:temp root.macro_input.wood_type 10

function tcc:item/saplink/power_connector_macro with storage tcc:temp root.macro_input
execute if data storage tcc:temp root.success_cooldown anchored eyes run return run function tcc:item/saplink/success_vfx
execute unless data storage tcc:temp root.success anchored eyes run return run function tcc:item/saplink/failure_vfx