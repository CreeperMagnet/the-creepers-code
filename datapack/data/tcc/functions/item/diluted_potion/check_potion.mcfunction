############################################################
# Checks if the player has a potion effect
############################################################

scoreboard players set @s tcc.dummy 0
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{no_effects:1b} run scoreboard players set @s tcc.dummy 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:1}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:swiftness"} run effect give @s minecraft:speed 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:1}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_swiftness"} run effect give @s minecraft:speed 48 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:1,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_swiftness"} run effect give @s minecraft:speed 9 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:slowness"} run effect give @s minecraft:slowness 9 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_slowness"} run effect give @s minecraft:slowness 24 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2,Amplifier:3b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_slowness"} run effect give @s minecraft:slowness 2 3

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:5}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strength"} run effect give @s minecraft:strength 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:5}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_strength"} run effect give @s minecraft:strength 48 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:5,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_strength"} run effect give @s minecraft:strength 9 1

execute if entity @s[gamemode=!creative] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:harming"} run function tcc:item/diluted_potion/apply_effect/harming

execute if entity @s[gamemode=!creative] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:healing"} run function tcc:item/diluted_potion/apply_effect/healing

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:8}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:leaping"} run effect give @s minecraft:jump_boost 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:8}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_leaping"} run effect give @s minecraft:jump_boost 48 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:8,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_leaping"} run effect give @s minecraft:jump_boost 9 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:9}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:nausea"} run effect give @s minecraft:nausea 3 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:9}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_nausea"} run effect give @s minecraft:nausea 6 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:10}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:regeneration"} run effect give @s minecraft:regeneration 5 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:10}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_regeneration"} run effect give @s minecraft:regeneration 9 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:10,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_regeneration"} run effect give @s minecraft:regeneration 2 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2,Amplifier:3b},{Id:11,Amplifier:2b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:turtle_master"} run function tcc:item/diluted_potion/apply_effect/turtle_master
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2,Amplifier:3b},{Id:11,Amplifier:2b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_turtle_master"} run function tcc:item/diluted_potion/apply_effect/long_turtle_master
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:2,Amplifier:5b},{Id:11,Amplifier:3b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_turtle_master"} run function tcc:item/diluted_potion/apply_effect/strong_turtle_master

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:5,Amplifier:2b},{Id:15}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run function tcc:item/diluted_potion/apply_effect/blind_rage
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:5,Amplifier:2b},{Id:15}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run function tcc:item/diluted_potion/apply_effect/long_blind_rage

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:12}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:fire_resistance"} run effect give @s minecraft:fire_resistance 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:12}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_fire_resistance"} run effect give @s minecraft:fire_resistance 48 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:13}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:water_breathing"} run effect give @s minecraft:water_breathing 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:13}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_water_breathing"} run effect give @s minecraft:water_breathing 48 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:14}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:invisibility"} run effect give @s minecraft:invisibility 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:14}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_invisibility"} run effect give @s minecraft:invisibility 48 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:16}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:night_vision"} run effect give @s minecraft:night_vision 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:16}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_night_vision"} run effect give @s minecraft:night_vision 48 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:18}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:weakness"} run effect give @s minecraft:weakness 9 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:18}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_weakness"} run effect give @s minecraft:weakness 24 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:19}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:poison"} run effect give @s minecraft:poison 5 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:19}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_poison"} run effect give @s minecraft:poison 9 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:19,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_poison"} run effect give @s minecraft:poison 2 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:21}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:fortitude"} run effect give @s minecraft:health_boost 18 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:21}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_fortitude"} run effect give @s minecraft:health_boost 48 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:21,Amplifier:1b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:strong_fortitude"} run effect give @s minecraft:health_boost 9 1

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:26}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:luck"} run effect give @s minecraft:luck 30 0

execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:28}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:slow_falling"} run effect give @s minecraft:slow_falling 9 0
execute store success score @s[scores={tcc.dummy=0},nbt=!{ActiveEffects:[{Id:28}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_slow_falling"} run effect give @s minecraft:slow_falling 24 0




