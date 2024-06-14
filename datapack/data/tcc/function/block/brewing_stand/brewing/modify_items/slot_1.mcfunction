# Runs commands off a potion in slot 1

data remove storage tcc:temp root
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:1b}]
function tcc:block/brewing_stand/brewing/modify_items/modify_storage
data modify storage tcc:temp root.item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage tcc:temp root.item