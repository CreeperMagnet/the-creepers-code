# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"empty"}
data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:diluted_potion/uncraftable/main"