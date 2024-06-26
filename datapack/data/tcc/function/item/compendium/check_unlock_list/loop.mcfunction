# Makes sure the player's list of unlocked entries doesn't contain non-existant ones

$execute if data storage tcc:temp root{all_entries:["$(entry)"]} run data modify storage tcc:temp root.compendium.unlocked_entries prepend from storage tcc:temp root.compendium.unlocked_entries[-1]
data remove storage tcc:temp root.compendium.unlocked_entries[-1]

data modify storage tcc:temp root.check_unlocks.entry set from storage tcc:temp root.compendium.unlocked_entries[-1]
scoreboard players add #temp_0 tcc.dummy 1
execute if score #temp_0 tcc.dummy < #temp_1 tcc.dummy run function tcc:item/compendium/check_unlock_list/loop
