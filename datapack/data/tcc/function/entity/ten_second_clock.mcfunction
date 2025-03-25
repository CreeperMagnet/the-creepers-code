# Functions to run off of every tcc entity every ten seconds

## Trader Entities
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/ten_second_clock

## Trident refreshing
execute if entity @s[type=minecraft:trident,tag=tcc.trident] run data modify entity @s life set value -32767s

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/ten_second_clock

## Brewing stand marker
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run kill @s

## Leaf litter cleanup marker
execute if entity @s[type=minecraft:marker,tag=tcc.mansion_leaf_litter_cleanup] run function tcc:entity/processing/mansion_cleanup

## Zombified Archaeologists
execute if entity @s[type=minecraft:zombie_villager,tag=tcc.zombified_archaeologist] run function tcc:entity/archaeologist/zombie/ten_second_clock

## Undead burning
execute if entity @s[tag=tcc.burns_in_sunlight] unless predicate tcc:time_check/night positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s

## Glow lichen zombie not converting to drowned
execute if entity @s[tag=tcc.glow_lichen_zombie] run data modify entity @s InWaterTime set value -32767

## Persistent Cursed Crown
execute if entity @s[type=minecraft:item,tag=tcc.persistent_cursed_crown] run data modify entity @s Age set value -32767s

## Phantom item frame item frame vehicle entity
kill @s[type=minecraft:item_frame,tag=tcc.phantom_item_frame,predicate=!tcc:entity_properties/has_passenger]

## Kill passengers without vehicles
kill @s[tag=tcc.passenger_entity,predicate=!tcc:entity_properties/in_vehicle]