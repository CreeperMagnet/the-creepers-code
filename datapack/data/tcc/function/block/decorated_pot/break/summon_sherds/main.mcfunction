# Summons the sherds from a pot

data modify storage tcc:temp root.sherds set from entity @s item.components."minecraft:custom_data".item.components."minecraft:custom_data".tcc.sherds
function tcc:block/decorated_pot/break/summon_sherds/spawn_loop