############################################################
# Description: Cleans up the tags of the AEC
# Creator: CreeperMagnet_
############################################################

execute if data entity @s Potion run data modify storage tcc:storage root.temp.potion set from entity @s Potion

execute if data entity @s Effects[{Id:1b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:swiftness"
execute if data entity @s Effects[{Id:1b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_swiftness"
execute if data entity @s Effects[{Id:1b}] unless data entity @s Effects[{Id:1b,Amplifier:0b}] unless data entity @s Effects[{Id:1b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:swiftness"

execute if data entity @s Effects[{Id:2b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:slowness"
execute if data entity @s Effects[{Id:2b,Amplifier:3b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_slowness"
execute if data entity @s Effects[{Id:2b}] unless data entity @s Effects[{Id:2b,Amplifier:0b}] unless data entity @s Effects[{Id:2b,Amplifier:3b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:slowness"

execute if data entity @s Effects[{Id:3b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:haste"

execute if data entity @s Effects[{Id:4b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:mining_fatigue"

execute if data entity @s Effects[{Id:5b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strength"
execute if data entity @s Effects[{Id:5b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_strength"
execute if data entity @s Effects[{Id:5b}] unless data entity @s Effects[{Id:5b,Amplifier:0b}] unless data entity @s Effects[{Id:5b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strength"

## Has error potential (Instant effect)
execute if data entity @s Effects[{Id:6b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:healing"
execute if data entity @s Effects[{Id:6b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_healing"
execute if data entity @s Effects[{Id:6b}] unless data entity @s Effects[{Id:6b,Amplifier:0b}] unless data entity @s Effects[{Id:6b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:healing"

## Has error potential (Instant effect)
execute if data entity @s Effects[{Id:7b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:harming"
execute if data entity @s Effects[{Id:7b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_harming"
execute if data entity @s Effects[{Id:7b}] unless data entity @s Effects[{Id:7b,Amplifier:0b}] unless data entity @s Effects[{Id:7b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:harming"

execute if data entity @s Effects[{Id:8b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:leaping"
execute if data entity @s Effects[{Id:8b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_leaping"
execute if data entity @s Effects[{Id:8b}] unless data entity @s Effects[{Id:8b,Amplifier:0b}] unless data entity @s Effects[{Id:8b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_leaping"

execute if data entity @s Effects[{Id:9b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:nausea"

execute if data entity @s Effects[{Id:10b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:regeneration"
execute if data entity @s Effects[{Id:10b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_regeneration"
execute if data entity @s Effects[{Id:10b}] unless data entity @s Effects[{Id:10b,Amplifier:0b}] unless data entity @s Effects[{Id:10b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_regeneration"

execute if data entity @s Effects[{Id:11b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:resistance"

execute if data entity @s Effects[{Id:12b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:fire_resistance"

execute if data entity @s Effects[{Id:13b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:water_breathing"

execute if data entity @s Effects[{Id:14b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:invisibility"

execute if data entity @s Effects[{Id:15b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:blindness"

execute if data entity @s Effects[{Id:16b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:night_vision"

execute if data entity @s Effects[{Id:17b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:hunger"

execute if data entity @s Effects[{Id:18b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:weakness"

execute if data entity @s Effects[{Id:19b,Amplifier:0b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:poison"
execute if data entity @s Effects[{Id:19b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_poison"
execute if data entity @s Effects[{Id:19b}] unless data entity @s Effects[{Id:19b,Amplifier:0b}] unless data entity @s Effects[{Id:19b,Amplifier:1b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:strong_poison"

execute if data entity @s Effects[{Id:20b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:wither"

execute if data entity @s Effects[{Id:21b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:health_boost"

execute if data entity @s Effects[{Id:22b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:absorption"


## Has error potential (Instant effect)
execute if data entity @s Effects[{Id:23b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:saturation"

execute if data entity @s Effects[{Id:24b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:glowing"

execute if data entity @s Effects[{Id:25b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:levitation"

execute if data entity @s Effects[{Id:26b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:luck"

execute if data entity @s Effects[{Id:27b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:unluck"

execute if data entity @s Effects[{Id:28b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:slow_falling"

execute if data entity @s Effects[{Id:29b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:conduit_power"

execute if data entity @s Effects[{Id:30b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:dolphins_grace"

execute if data entity @s Effects[{Id:31b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:bad_omen"

execute if data entity @s Effects[{Id:32b}] run data modify storage tcc:storage root.temp.potion set value "minecraft:hero_of_the_village"
