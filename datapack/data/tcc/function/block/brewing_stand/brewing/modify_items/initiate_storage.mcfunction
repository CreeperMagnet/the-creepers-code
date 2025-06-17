# Runs commands off a potion in a specific slot (macroed)

data remove storage tcc:temp root

# Set up "ingredient" for checks
data modify storage tcc:temp root.ingredient set from block ~ ~ ~ Items[{Slot:3b}]

$data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$function tcc:block/brewing_stand/brewing/modify_items/modify_storage {slot:$(slot)}