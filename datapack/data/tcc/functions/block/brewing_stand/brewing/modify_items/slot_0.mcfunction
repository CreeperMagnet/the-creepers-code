# Runs commands off a potion in slot 0

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:0b}]
function tcc:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage tcc:temp root.item.Slot set value 0b
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage tcc:temp root.item