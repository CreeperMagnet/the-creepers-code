# Initiates things for the player

# Version initiation message
tellraw @s {"clickEvent":{"action":"open_url","value":"https://api.smithed.dev/v2/download?pack=tcc@1.3.6&mode=resourcepack"},"fallback": "\nThe Creeper's Code required resource pack is not installed. Click here to download it.\n","translate":"commands.tcc.initiate.version_check","color":"red","with":[{"translate":"commands.tcc.initiate","color":"white","underlined":false,"clickEvent":{"action":"suggest_command","value":""},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}}]}]}

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
