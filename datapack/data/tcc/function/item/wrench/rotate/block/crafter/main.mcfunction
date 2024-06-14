# Rotates a block

data modify storage tcc:temp root.macro_input set value {"triggered":"false","crafting":"false"}
execute if block ~ ~ ~ minecraft:crafter[triggered=true] run data modify storage tcc:temp root.macro_input.triggered set value "true"
execute if block ~ ~ ~ minecraft:crafter[crafting=true] run data modify storage tcc:temp root.macro_input.crafting set value "true"
function tcc:item/wrench/rotate/block/crafter/form_macro with storage tcc:temp root.macro_input