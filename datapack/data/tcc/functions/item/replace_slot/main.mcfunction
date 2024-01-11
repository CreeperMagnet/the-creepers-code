# Replace an item in the player's inventory

function tcc:item/get_item_pos
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.Count

$data modify storage tcc:storage root.temp.item_position.path set value "$(path)"

function tcc:item/replace_slot/replace with storage tcc:storage root.temp.item_position
