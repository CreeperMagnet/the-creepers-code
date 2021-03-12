############################################################
# Description: Initiates things for the player
# Creator: CreeperMagnet_
############################################################

tellraw @s {"translate":"The Creeper's Code Resource Pack is not installed. Please go to https://thecreeperscode.com/download.","with":[{"translate":"commands.tcc.initiate","hoverEvent":{"action":"show_text","value":{"translate":"commands.tcc.initiate.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/help"},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","value":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}},{"translate":"pack.tcc.version","color":"green","underlined":true,"hoverEvent":{"action":"show_text","value":{"translate":"pack.tcc.version.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/development/0-4-changelog"}}]}]}
scoreboard players set @s tcc.dummy 2586
execute store result score @s tcc.dummy2 run data get entity @s DataVersion
scoreboard players operation @s tcc.dummy2 -= @s tcc.dummy
execute unless entity @s[scores={tcc.dummy2=-2..0}] run tellraw @s {"translate":"commands.tcc.initiate.wrong_version","color":"red","bold":true}
execute unless entity @s[scores={tcc.dummy2=-2..0}] run title @s[tag=!global.ignore.gui] title {"translate":"commands.tcc.initiate.wrong_version.title","color":"red","bold":true}
function tcc:item/compendium
scoreboard players reset @s tcc.dummy2
scoreboard players reset @s tcc.dummy
scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0
scoreboard players set @s tcc.invul_timer 0
