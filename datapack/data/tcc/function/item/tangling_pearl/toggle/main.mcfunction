# Changes the enabled status

execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{enabled:0b} run return run function tcc:item/tangling_pearl/toggle/on
function tcc:item/tangling_pearl/toggle/off