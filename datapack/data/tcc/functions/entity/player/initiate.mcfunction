############################################################
# Initiates things for the player
############################################################

tellraw @s {"clickEvent":{"action":"open_url","value":"https://api.smithed.dev/v2/download?pack=tcc@1.1.1&mode=resourcepack"},"fallback": "\nThe Creeper's Code required resource pack is not installed. Click here to download it.\n","translate":"commands.tcc.initiate.version_check","color":"red","with":[{"translate":"commands.tcc.initiate","color":"white","underlined":false,"clickEvent":{"action":"suggest_command","value":""},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}}]}]}

scoreboard players set @s tcc.dummy 3337
execute store result score @s tcc.dummy2 run data get entity @s DataVersion
scoreboard players operation @s tcc.dummy2 -= @s tcc.dummy
execute unless entity @s[scores={tcc.dummy2=0}] run tellraw @s {"fallback": "You are using The Creeper's Code on the incorrect Minecraft version. You should be using Minecraft 1.19.4.","translate":"commands.tcc.wrong_version","color":"red","bold":true}
execute unless entity @s[scores={tcc.dummy2=0}] run title @s title {"translate":"commands.tcc.initiate.wrong_version.title","color":"red","bold":true,"fallback": "WRONG VERSION"}
function tcc:item/compendium
scoreboard players reset @s tcc.dummy2
scoreboard players reset @s tcc.dummy
scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0