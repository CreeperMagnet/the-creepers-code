# Changes renamed saplink's data to be sonic screwdriver

data modify storage tcc:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sonic_screwdriver set value true

data modify storage tcc:temp root.macro_input.compound set from storage tcc:temp root.item.components
function tcc:item/modify_slot/type/modify
