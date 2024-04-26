# Replaces an item with a loot table

function tcc:item/modify_slot/get

$data modify storage tcc:temp root.macro_input.path set value '$(path)'
function tcc:item/modify_slot/modify/loot with storage tcc:temp root.macro_input
