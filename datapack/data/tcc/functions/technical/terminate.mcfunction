############################################################
# Gets rid of all scoreboards and other things
############################################################

tellraw @s {"translate":"The Creeper's Code Resource Pack is not installed. Please go to https://thecreeperscode.com/download.","with":[{"translate":"commands.tcc.terminate","with":[{"translate":"pack.tcc","color":"#008725","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com"}},{"translate":"pack.tcc.version","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.tcc.version.hover_event"}},"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/development/1-0-1-changelog"}},{"translate":"commands.tcc.terminate.more_steps","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://thecreeperscode.com/download"}}]}]}

data remove storage tcc:storage root

scoreboard objectives remove tcc.carrotstick

scoreboard objectives remove tcc.tea
scoreboard objectives remove tcc.invul_timer
scoreboard objectives remove tcc.boomerang_cooldown

scoreboard objectives remove tcc.dummy
scoreboard objectives remove tcc.dummy2

scoreboard objectives remove tcc.health

scoreboard objectives remove tcc.crafted_item
scoreboard objectives remove tcc.drop

scoreboard objectives remove tcc.current_xp
scoreboard objectives remove tcc.old_xp

scoreboard objectives remove tcc.emoji
scoreboard objectives remove tcc.compendium

team remove tcc.amethyst

datapack disable "file/TCC Datapack.zip"
datapack disable "file/TCC Datapack"
