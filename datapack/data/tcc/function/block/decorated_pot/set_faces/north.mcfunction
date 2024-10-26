# Sets the faces of the decorated pot

data modify storage tcc:temp root.macro_input.sherd_0 set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[2].components."minecraft:custom_data".tcc.sherd
data modify storage tcc:temp root.macro_input.sherd_1 set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[0].components."minecraft:custom_data".tcc.sherd
function tcc:block/decorated_pot/set_faces_macro with storage tcc:temp root.macro_input

data modify storage tcc:temp root.macro_input.sherd_0 set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[1].components."minecraft:custom_data".tcc.sherd
data modify storage tcc:temp root.macro_input.sherd_1 set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[3].components."minecraft:custom_data".tcc.sherd
execute on passengers run function tcc:block/decorated_pot/set_faces_macro with storage tcc:temp root.macro_input
