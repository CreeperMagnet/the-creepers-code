############################################################
# Initiates things for the player
############################################################

tellraw @s {"translate":"The Creeper's Code Resource Pack is not installed. Please go to https://thecreeperscode.com/download.","with":[{"translate":"commands.tcc.initiate","with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}},{"translate":"pack.tcc.version","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.version.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/development/1-1-beta-4-changelog"}}]}]}

scoreboard players set @s tcc.dummy 3218
execute store result score @s tcc.dummy2 run data get entity @s DataVersion
scoreboard players operation @s tcc.dummy2 -= @s tcc.dummy
execute unless entity @s[scores={tcc.dummy2=0}] run tellraw @s {"translate":"commands.tcc.wrong_version: You are using TCC on the incorrect Minecraft version. Please check the download.","color":"red","bold":true}
execute unless entity @s[scores={tcc.dummy2=0}] run title @s title {"translate":"commands.tcc.initiate.wrong_version.title","color":"red","bold":true}
function tcc:item/compendium
scoreboard players reset @s tcc.dummy2
scoreboard players reset @s tcc.dummy
scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0
scoreboard players set @s tcc.invul_timer 0
