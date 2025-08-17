# Initiates things for the player

##### DO NOT MOVE THE POSITION OF THE BELOW LINE. IT IS EDITED BEFORE EXPORT.
tellraw @s {"click_event":{"action":"open_url","url":"https://github.com/CreeperMagnet/tcc/"},"fallback": "\nWARNING\n\nThe Creeper's Code required resource pack is not installed. Click here to download it. Gameplay will break if not used.\n\nWARNING","translate":"tcc.resource_pack_validation.check_installed","color":"red","bold":true,"with":[{"translate":"tcc.resource_pack_validation.check_version.dev_version_do_not_distribute","fallback":"\nWARNING\n\nYou have the wrong version of the TCC resource pack installed. Click here to download the correct one. Gameplay will break if not used.\n\nWARNING","with":[{"translate":"commands.tcc.initiate","color":"white","underlined":false,"bold":false,"click_event":{"action":"suggest_command","command":""},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hover_event":{"action":"show_text","value":{"translate":"pack.tcc.hover_event"}},"click_event":{"action":"open_url","url":"https://thecreeperscode.com"}}]}]}]}

# Scoreboard objectives
scoreboard players reset @s tcc.dummy2
scoreboard players reset @s tcc.dummy
scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0

# Compendium stuff
data modify storage tcc:temp root.manage_data.uuid set from entity @s UUID
tag @s add tcc.dont_set_data
function tcc:item/compendium/data/get/main

execute unless data storage tcc:temp root.compendium run tag @s add tcc.unlockable_compendium
execute unless data storage tcc:temp root.compendium run function tcc:item/compendium/give
execute if data storage tcc:temp root.compendium run function tcc:item/compendium/check_unlock_list/main
execute if data storage tcc:temp root.compendium run function tcc:item/compendium/refresh
# Just to clean up stuff
data remove storage tcc:temp root
