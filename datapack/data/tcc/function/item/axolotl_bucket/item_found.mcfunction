# Buckets an axolotl

execute if data storage tcc:temp root.item.components."minecraft:custom_model_data" run return 0

function tcc:item/axolotl_bucket/set_data

data modify storage tcc:temp root.macro_input.compound set from storage tcc:temp root.item.components
function tcc:item/modify_slot/type/modify
