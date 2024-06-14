# Replaces an item with another one

function tcc:item/modify_slot/get

$data modify storage tcc:temp root.macro_input.id set value "$(id)"
$data modify storage tcc:temp root.macro_input.components set value $(components)

function tcc:item/modify_slot/modify/replace with storage tcc:temp root.macro_input
