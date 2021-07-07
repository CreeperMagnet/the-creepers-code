############################################################
# Description: Initiates things for the player
# Creator: CreeperMagnet_
############################################################

tellraw @s {"translate":"The Creeper's Code Resource Pack is not installed. Please go to https://thecreeperscode.com/download.","with":[{"translate":"commands.tcc.initiate","hoverEvent":{"action":"show_text","value":{"translate":"commands.tcc.initiate.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/help"},"with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","value":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}},{"translate":"pack.tcc.version","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":{"translate":"pack.tcc.version.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/development/0-5-1-changelog"}}]}]}

scoreboard players set @s tcc.dummy 2730
execute store result score @s tcc.dummy2 run data get entity @s DataVersion
scoreboard players operation @s tcc.dummy2 -= @s tcc.dummy
execute unless entity @s[scores={tcc.dummy2=-6..0}] run tellraw @s {"translate":"commands.tcc.wrong_version: You are using TCC on the incorrect Minecraft version. Please check the download.","color":"red","bold":true}
execute unless entity @s[scores={tcc.dummy2=-6..0}] run title @s[tag=!global.ignore.gui] title {"translate":"commands.tcc.initiate.wrong_version.title","color":"red","bold":true}
function tcc:item/compendium
scoreboard players reset @s tcc.dummy2
scoreboard players reset @s tcc.dummy

execute store result score @s tcc.dummy run time query gametime
execute unless data storage tcc:storage root.gamerules.generateMonuments as @s[scores={tcc.dummy=..1200}] run data modify storage tcc:storage root.gamerules.generateMonuments set value 1b
execute unless data storage tcc:storage root.gamerules.generateMonuments as @s[scores={tcc.dummy=1200..}] run tellraw @s [{"text":"\n"},{"translate":"commands.tcc.monument_generation_prompt: This datapack's ocean monument edits have been disabled since you have added this datapack to an already existing world. Please click this message and run the suggested command if you want to re-enable them. Re-enabling may cause destruction of player builds in and around existing ocean monuments.","color":"red","clickEvent":{"action":"suggest_command","value":"/data modify storage tcc:storage root.gamerules.generateMonuments set value 1b"}}]
execute unless data storage tcc:storage root.gamerules.generateMonuments as @s[scores={tcc.dummy=1200..}] run data modify storage tcc:storage root.gamerules.generateMonuments set value 0b

scoreboard players enable @s tcc.emoji
scoreboard players set @s tcc.emoji 0
scoreboard players set @s tcc.invul_timer 0
