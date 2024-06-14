# Gets the container name for the item

function tcc:item/get_item_pos

execute if score #temp_0 tcc.dummy matches 0..8 run data modify storage tcc:temp root.macro_input.container_name set value "hotbar."
execute if score #temp_0 tcc.dummy matches 9..35 run data modify storage tcc:temp root.macro_input.container_name set value "inventory."
execute if score #temp_0 tcc.dummy matches -106 run data modify storage tcc:temp root.macro_input.container_name set value "weapon.offhand"
execute if score #temp_0 tcc.dummy matches -106 run data modify storage tcc:temp root.macro_input.container_slot set value ""
