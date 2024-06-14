# Runs commands off a potion in slot 2

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:2b}]
function tcc:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage tcc:temp root.item.Slot set value 2b
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage tcc:temp root.item