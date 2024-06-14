# Functions to run off of every tcc entity every ten seconds

## Wandering witch
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.wandering_witch] run function tcc:entity/wandering_witch/ten_second_clock

## Trident refreshing
execute if entity @s[type=minecraft:trident,tag=tcc.trident] run data modify entity @s life set value -32767s

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/ten_second_clock

## Brewing stand marker
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run kill @s

## Glowing recovery compass items
execute if entity @s[type=minecraft:item,tag=tcc.recovery_compass_item] run data modify entity @s Age set value -32767s

## Zombified Archaeologists
execute if entity @s[type=minecraft:zombie_villager,tag=tcc.zombified_archaeologist] run function tcc:entity/archaeologist/zombie/ten_second_clock

## Undead burning
execute if entity @s[tag=tcc.burns_in_sunlight] unless predicate tcc:time_check/night positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s

## Jungle Temple Cursed Crown Loot
execute if entity @s[type=minecraft:item,tag=tcc.persistent_cursed_crown] run function tcc:entity/persistent_cursed_crown/ten_second_clock

## Phantom item frame item frame vehicle entity
kill @s[type=minecraft:item_frame,tag=tcc.phantom_item_frame,predicate=!tcc:entity_properties/has_passenger]

## Kill passengers without vehicles
kill @s[tag=tcc.passenger_entity,predicate=!tcc:entity_properties/in_vehicle]