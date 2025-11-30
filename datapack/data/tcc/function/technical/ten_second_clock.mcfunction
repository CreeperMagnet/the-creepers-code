# Commands to run every ten seconds

# Entities

## Fixes for smithed.prevent_aggression
execute as @e[type=minecraft:villager,team=smithed.prevent_aggression,tag=tcc.has_been_zombified] run function tcc:entity/villager_zombification/cured_remove_tags

## Trader Entities
execute as @e[type=minecraft:wandering_trader,tag=tcc.trader_entity] at @s run function tcc:entity/trader_entity/ten_second_clock

## Trident refreshing
execute as @e[type=minecraft:trident,tag=tcc.trident] run data modify entity @s life set value -32767s

## Persistent Cursed Crown
execute as @e[type=minecraft:item,tag=tcc.persistent_cursed_crown] run data modify entity @s Age set value -32767s

## Glow lichen zombie ten second clock
execute as @e[type=minecraft:zombie,tag=tcc.glow_lichen_zombie] at @s run function tcc:entity/glow_lichen_zombie/ten_second_clock

## All blocks
execute as @e[type=minecraft:item_display,tag=tcc.block] at @s run function tcc:block/ten_second_clock

## Gobblerift interaction somehow getting separated from its item display (make sure entire storage array isn't destroyed)
execute as @e[type=minecraft:interaction,tag=tcc.gobblerift,predicate=!tcc:entity_properties/in_vehicle] at @s run function tcc:block/gobblerift/break/interaction

## Zombified Archaeologists
execute as @e[type=minecraft:zombie_villager,tag=tcc.zombified_archaeologist] at @s run function tcc:entity/archaeologist/zombie/ten_second_clock

## Coral drowned burning in sunlight
execute as @e[type=minecraft:drowned,tag=tcc.coral_drowned] at @s unless predicate tcc:time_check/night if dimension minecraft:overworld positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s


# Wandering Witch Spawning Clock
execute if entity @p run function tcc:entity/wandering_witch/spawning/clock



# Reschedule
schedule function tcc:technical/ten_second_clock 10s replace
