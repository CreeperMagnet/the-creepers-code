############################################################
# Description: Breaks the block in front of a block breaker
# Creator: ChromaKey
############################################################

execute store result score tcc.temp_1 tcc.dummy run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute unless score @s tcc.dummy2 matches -1.. run scoreboard players set @s tcc.dummy2 -1
execute if score @s tcc.dummy2 matches -1 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ~ ~ ~ mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches -1 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-1 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 0 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-1 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 0 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-2 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 1 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-2 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-3 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 2 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-3 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 2 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-4 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 3 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-4 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 3 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-5 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 4 unless block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-5 mine ^ ^ ^1 mainhand
execute if score @s tcc.dummy2 matches 4 if block ~ ~ ~ dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-6 mine ^ ^ ^1 mainhand
execute store result score tcc.tiledrops_default tcc.dummy run gamerule doTileDrops
gamerule doTileDrops false
setblock ^ ^ ^1 air destroy
execute if score tcc.tiledrops_default tcc.dummy matches 1.. run gamerule doTileDrops true
tag @s remove tcc.scheduled.block_breaker
scoreboard players add @s tcc.dummy2 1
execute if entity @s[tag=tcc.chopper] unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^2 unless predicate tcc:block_breakers/chopper store result score @s tcc.dummy2 run scoreboard players get tcc.temp_1 tcc.dummy
execute if entity @s[tag=tcc.excavator] unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^2 unless predicate tcc:block_breakers/excavator store result score @s tcc.dummy2 run scoreboard players get tcc.temp_1 tcc.dummy
execute if entity @s[tag=tcc.harvester] unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^2 unless predicate tcc:block_breakers/harvester store result score @s tcc.dummy2 run scoreboard players get tcc.temp_1 tcc.dummy
execute if entity @s[tag=tcc.sifter] unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^2 unless predicate tcc:block_breakers/sifter store result score @s tcc.dummy2 run scoreboard players get tcc.temp_1 tcc.dummy
execute if entity @s[tag=tcc.snipper] unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^2 unless predicate tcc:block_breakers/snipper store result score @s tcc.dummy2 run scoreboard players get tcc.temp_1 tcc.dummy
execute unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^1 run function tcc:block/block_breakers/break_block
execute if score @s tcc.dummy2 = tcc.temp_1 tcc.dummy run scoreboard players reset @s tcc.dummy2
execute if score @s tcc.dummy2 = tcc.temp_1 tcc.dummy run scoreboard players reset tcc.temp_1
