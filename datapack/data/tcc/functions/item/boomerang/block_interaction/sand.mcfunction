############################################################
# Makes floating sand fall
############################################################

execute if block ~ ~ ~ minecraft:sand align xyz run summon minecraft:falling_block ~.5 ~ ~.5 {Time:-2147483648,BlockState:{Name:"minecraft:sand"}}
execute if block ~ ~ ~ minecraft:red_sand align xyz run summon minecraft:falling_block ~.5 ~ ~.5 {Time:-2147483648,BlockState:{Name:"minecraft:red_sand"}}

execute store result score #tiledrops_default tcc.dummy run gamerule doTileDrops
gamerule doTileDrops false
setblock ~ ~ ~ air destroy
execute if score #tiledrops_default tcc.dummy matches 1.. run gamerule doTileDrops true
