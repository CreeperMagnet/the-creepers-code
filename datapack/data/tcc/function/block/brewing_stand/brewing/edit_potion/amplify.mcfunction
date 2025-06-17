# Commands to edit an existing custom potion in the brewing stand

$item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_custom_data","tag":"{tcc:{potion:{can_extend:0b,can_amplify:0b}}}"}
$execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run item modify block ~ ~ ~ container.$(slot) tcc:set_potion_data/amplify/fortitude