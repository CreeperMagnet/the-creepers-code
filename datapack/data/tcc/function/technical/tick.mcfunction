# Functions to run every single tick

## Entity Ticking

### Markers
execute as @e[type=minecraft:marker,tag=tcc.marker] at @s run function tcc:entity/technical/tick/marker

### Item displays
execute as @e[type=minecraft:item_display,tag=tcc.item_display] at @s run function tcc:entity/technical/tick/item_display

### Archaeologist
execute as @e[type=minecraft:villager,tag=tcc.archaeologist] at @s run function tcc:entity/archaeologist/tick

### Trader Entities
execute as @e[type=minecraft:wandering_trader,tag=tcc.trader_entity] at @s run function tcc:entity/trader_entity/tick

### Iceologer Ice
execute as @e[type=minecraft:falling_block,tag=tcc.falling_ice] at @s run function tcc:entity/iceologer/ice/tick

### Player Tick
execute as @a at @s run function tcc:entity/player/tick/main
