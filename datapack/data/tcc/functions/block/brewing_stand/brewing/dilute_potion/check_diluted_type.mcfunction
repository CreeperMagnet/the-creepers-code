############################################################
# Checks what the potion should do if it succeeds in dilution
############################################################

scoreboard players set @s tcc.dummy 0
data modify storage tcc:storage root.temp.potion set from storage tcc:storage root.temp.item.tag.Potion
execute if data storage tcc:storage root.temp.item.tag.tcc.potion.id run data modify storage tcc:storage root.temp.potion set from storage tcc:storage root.temp.item.tag.tcc.potion.id
data modify storage tcc:storage root.temp.item set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{RepairCost:100,tcc:{id:"diluted_potion",potion:{uses:[10,10]}},CustomModelData:0,Unbreakable:1b,HideFlags:5}}
data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":[10,10]}','{"translate":"pack.tcc","color":"#008725","italic":true}']
data modify storage tcc:storage root.temp.item.tag.tcc.potion.id set from storage tcc:storage root.temp.potion

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:swiftness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/swiftness
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_swiftness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_swiftness
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_swiftness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_swiftness

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:slowness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/slowness
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_slowness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_slowness
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_slowness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_slowness

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strength"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strength
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_strength"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_strength
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_strength"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_strength

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:harming"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/harming
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_harming"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_harming

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:healing"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/healing
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_healing"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_healing

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:leaping"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/leaping
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_leaping"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_leaping
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_leaping"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_leaping

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:regeneration"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/regeneration
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_regeneration"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_regeneration
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_regeneration"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_regeneration

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:turtle_master"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/turtle_master
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_turtle_master"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_turtle_master
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_turtle_master"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_turtle_master

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:fire_resistance"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/fire_resistance
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_fire_resistance"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_fire_resistance

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:water_breathing"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/water_breathing
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_water_breathing"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_water_breathing

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:invisibility"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/invisibility
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_invisibility"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_invisibility

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:night_vision"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/night_vision
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_night_vision"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_night_vision

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:weakness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/weakness
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_weakness"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_weakness

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:poison"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/poison
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_poison"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_poison
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:strong_poison"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_poison

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:luck"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/luck

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:slow_falling"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/slow_falling
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:long_slow_falling"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_slow_falling

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:blind_rage"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/blind_rage
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:long_blind_rage"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_blind_rage

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:nausea"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/nausea
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:long_nausea"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_nausea

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:fortitude"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/fortitude
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:long_fortitude"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_fortitude
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"tcc:strong_fortitude"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_fortitude

execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:water"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/water
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:thick"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/thick
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:awkward"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/awkward
execute store result score @s[scores={tcc.dummy=0}] tcc.dummy if data storage tcc:storage root.temp{potion:"minecraft:mundane"} run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/mundane




execute if entity @s[scores={tcc.dummy=0}] run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/uncraftable



