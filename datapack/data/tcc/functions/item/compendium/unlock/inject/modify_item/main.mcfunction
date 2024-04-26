# Copies the modified NBT to a compendium

# Tag so advancements won't trigger while modifying the item
tag @s add tcc.modifying_item

data modify storage tcc:temp root.macro_input.compound set from storage tcc:temp root.item.components
function tcc:item/modify_slot/type/modify

tag @s remove tcc.modifying_item
