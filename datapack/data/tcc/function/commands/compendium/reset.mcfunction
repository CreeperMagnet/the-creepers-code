# Resets this player's unlockable compendium data & items

# Important for multiplayer compat
data modify storage tcc:temp root.manage_data.uuid set from entity @s UUID

data modify storage tcc:temp root.compendium set value {}
function tcc:item/compendium/data/reset_all
function tcc:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
