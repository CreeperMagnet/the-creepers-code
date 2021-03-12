############################################################
# Description: Functions to tell which potion ring you're using
# Creator: CreeperMagnet_
############################################################

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b}]}] speed 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b}]}] speed 8 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b,Amplifier:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_swiftness"}}}}},nbt=!{ActiveEffects:[{Id:1b,Amplifier:1b}]}] speed 2 1

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b}]}] slowness 2 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b}]}] slowness 4 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_slowness"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b}]}] slowness 1 3

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:haste"}}}}},nbt=!{ActiveEffects:[{Id:3b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:haste"}}}}},nbt=!{ActiveEffects:[{Id:3b}]}] haste 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:mining_fatigue"}}}}},nbt=!{ActiveEffects:[{Id:4b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:mining_fatigue"}}}}},nbt=!{ActiveEffects:[{Id:4b}]}] mining_fatigue 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strength"}}}}},nbt=!{ActiveEffects:[{Id:5b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strength"}}}}},nbt=!{ActiveEffects:[{Id:5b}]}] strength 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_strength"}}}}},nbt=!{ActiveEffects:[{Id:5b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_strength"}}}}},nbt=!{ActiveEffects:[{Id:5b}]}] strength 8 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_strength"}}}}},nbt=!{ActiveEffects:[{Id:5b,Amplifier:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_strength"}}}}},nbt=!{ActiveEffects:[{Id:5b,Amplifier:1b}]}] strength 2 1

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b}]}] jump_boost 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b}]}] jump_boost 8 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b,Amplifier:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_leaping"}}}}},nbt=!{ActiveEffects:[{Id:8b,Amplifier:1b}]}] jump_boost 2 1

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:nausea"}}}}},nbt=!{ActiveEffects:[{Id:9b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:nausea"}}}}},nbt=!{ActiveEffects:[{Id:9b}]}] nausea 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 4 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b,Amplifier:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_regeneration"}}}}},nbt=!{ActiveEffects:[{Id:10b,Amplifier:1b}]}] regeneration 2 1

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:resistance"}}}}},nbt=!{ActiveEffects:[{Id:11b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:resistance"}}}}},nbt=!{ActiveEffects:[{Id:11b}]}] resistance 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:fire_resistance"}}}}},nbt=!{ActiveEffects:[{Id:12b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:fire_resistance"}}}}},nbt=!{ActiveEffects:[{Id:12b}]}] fire_resistance 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_fire_resistance"}}}}},nbt=!{ActiveEffects:[{Id:12b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_fire_resistance"}}}}},nbt=!{ActiveEffects:[{Id:12b}]}] fire_resistance 8 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:water_breathing"}}}}},nbt=!{ActiveEffects:[{Id:13b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:water_breathing"}}}}},nbt=!{ActiveEffects:[{Id:13b}]}] water_breathing 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_water_breathing"}}}}},nbt=!{ActiveEffects:[{Id:13b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_water_breathing"}}}}},nbt=!{ActiveEffects:[{Id:13b}]}] water_breathing 8 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:invisibility"}}}}},nbt=!{ActiveEffects:[{Id:14b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:invisibility"}}}}},nbt=!{ActiveEffects:[{Id:14b}]}] invisibility 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_invisibility"}}}}},nbt=!{ActiveEffects:[{Id:14b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_invisibility"}}}}},nbt=!{ActiveEffects:[{Id:14b}]}] invisibility 8 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:blindness"}}}}},nbt=!{ActiveEffects:[{Id:15b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:blindness"}}}}},nbt=!{ActiveEffects:[{Id:15b}]}] blindness 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:night_vision"}}}}},nbt=!{ActiveEffects:[{Id:16b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:night_vision"}}}}},nbt=!{ActiveEffects:[{Id:16b}]}] night_vision 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_night_vision"}}}}},nbt=!{ActiveEffects:[{Id:16b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_night_vision"}}}}},nbt=!{ActiveEffects:[{Id:16b}]}] night_vision 8 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:hunger"}}}}},nbt=!{ActiveEffects:[{Id:17b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:hunger"}}}}},nbt=!{ActiveEffects:[{Id:17b}]}] hunger 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:weakness"}}}}},nbt=!{ActiveEffects:[{Id:18b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:weakness"}}}}},nbt=!{ActiveEffects:[{Id:18b}]}] weakness 2 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_weakness"}}}}},nbt=!{ActiveEffects:[{Id:18b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_weakness"}}}}},nbt=!{ActiveEffects:[{Id:18b}]}] weakness 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:poison"}}}}},nbt=!{ActiveEffects:[{Id:19b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:poison"}}}}},nbt=!{ActiveEffects:[{Id:19b}]}] poison 2 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_poison"}}}}},nbt=!{ActiveEffects:[{Id:19b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_poison"}}}}},nbt=!{ActiveEffects:[{Id:19b}]}] poison 3 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_poison"}}}}},nbt=!{ActiveEffects:[{Id:19b,Amplifier:1b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_poison"}}}}},nbt=!{ActiveEffects:[{Id:19b,Amplifier:1b}]}] poison 1 1

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:wither"}}}}},nbt=!{ActiveEffects:[{Id:20b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:wither"}}}}},nbt=!{ActiveEffects:[{Id:20b}]}] wither 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:health_boost"}}}}},nbt=!{ActiveEffects:[{Id:21b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:health_boost"}}}}},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:absorption"}}}}},nbt=!{ActiveEffects:[{Id:22b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:absorption"}}}}},nbt=!{ActiveEffects:[{Id:22b}]}] absorption 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:glowing"}}}}},nbt=!{ActiveEffects:[{Id:24b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:glowing"}}}}},nbt=!{ActiveEffects:[{Id:24b}]}] glowing 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:levitation"}}}}},nbt=!{ActiveEffects:[{Id:25b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:levitation"}}}}},nbt=!{ActiveEffects:[{Id:25b}]}] levitation 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:luck"}}}}},nbt=!{ActiveEffects:[{Id:26b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:luck"}}}}},nbt=!{ActiveEffects:[{Id:26b}]}] luck 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:unluck"}}}}},nbt=!{ActiveEffects:[{Id:27b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:unluck"}}}}},nbt=!{ActiveEffects:[{Id:27b}]}] unluck 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:slow_falling"}}}}},nbt=!{ActiveEffects:[{Id:28b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:slow_falling"}}}}},nbt=!{ActiveEffects:[{Id:28b}]}] slow_falling 2 0
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_slow_falling"}}}}},nbt=!{ActiveEffects:[{Id:28b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_slow_falling"}}}}},nbt=!{ActiveEffects:[{Id:28b}]}] slow_falling 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:conduit_power"}}}}},nbt=!{ActiveEffects:[{Id:29b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:conduit_power"}}}}},nbt=!{ActiveEffects:[{Id:29b}]}] conduit_power 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:dolphins_grace"}}}}},nbt=!{ActiveEffects:[{Id:30b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:dolphins_grace"}}}}},nbt=!{ActiveEffects:[{Id:30b}]}] dolphins_grace 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:bad_omen"}}}}},nbt=!{ActiveEffects:[{Id:31b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:bad_omen"}}}}},nbt=!{ActiveEffects:[{Id:31b}]}] bad_omen 4 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:hero_of_the_village"}}}}},nbt=!{ActiveEffects:[{Id:32b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:hero_of_the_village"}}}}},nbt=!{ActiveEffects:[{Id:32b}]}] hero_of_the_village 5 0

tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] resistance 1 2
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] slowness 1 3
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] resistance 2 2
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:long_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:3b},{Id:11b,Amplifier:2b}]}] slowness 2 3
tag @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:5b},{Id:11b,Amplifier:3b}]}] add tcc.tag
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:5b},{Id:11b,Amplifier:3b}]}] resistance 1 3
effect give @s[nbt={SelectedItem:{tag:{tcc:{potion:{id:"minecraft:strong_turtle_master"}}}}},nbt=!{ActiveEffects:[{Id:2b,Amplifier:5b},{Id:11b,Amplifier:3b}]}] slowness 1 5

execute if entity @s[tag=tcc.tag,gamemode=!spectator,gamemode=!creative] run function tcc:item/item_modification/durability/damage/rings/potion/mainhand

tag @s remove tcc.tag
