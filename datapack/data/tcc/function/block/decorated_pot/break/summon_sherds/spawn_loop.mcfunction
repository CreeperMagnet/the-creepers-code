# Spawns invalids in item form

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.item set from storage tcc:temp root.sherds[0]
execute unless data storage tcc:temp root.macro_input.item.count run data modify storage tcc:temp root.macro_input.item.count set value 1
execute unless data storage tcc:temp root.macro_input.item.components run data modify storage tcc:temp root.macro_input.item.components set value {}
function tcc:technical/macros/loot/spawn with storage tcc:temp root.macro_input.item
data remove storage tcc:temp root.sherds[0]
execute if data storage tcc:temp root.sherds[0] run function tcc:block/decorated_pot/break/summon_sherds/spawn_loop