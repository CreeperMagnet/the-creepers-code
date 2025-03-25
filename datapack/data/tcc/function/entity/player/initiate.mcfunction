# Initiates things for the player

# Version initiation message
tellraw @s {"click_event":{"action":"open_url","url":"https://github.com/CreeperMagnet/the-creepers-code/releases/download/1.5.1/tcc_resourcepack_1.5.1.zip"},"fallback": "\nThe Creeper's Code required resource pack is not installed. Click here to download it.\n","translate":"commands.tcc.initiate.version_check","color":"red","with":[{"translate":"commands.tcc.initiate","color":"white","underlined":false,"click_event":{"action":"suggest_command","command":""},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hover_event":{"action":"show_text","value":{"translate":"pack.tcc.hover_event"}},"click_event":{"action":"open_url","url":"https://thecreeperscode.com"}}]}]}

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
