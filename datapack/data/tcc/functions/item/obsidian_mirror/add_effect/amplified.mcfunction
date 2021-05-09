############################################################
# Description: Finds the proper potion effect to add
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.effect{Id:1b} run function tcc:item/obsidian_mirror/add_effect/amplified/slowness
execute if data storage tcc:storage root.temp.effect{Id:2b} run function tcc:item/obsidian_mirror/add_effect/amplified/speed
execute if data storage tcc:storage root.temp.effect{Id:3b} run function tcc:item/obsidian_mirror/add_effect/amplified/mining_fatigue
execute if data storage tcc:storage root.temp.effect{Id:4b} run function tcc:item/obsidian_mirror/add_effect/amplified/haste
execute if data storage tcc:storage root.temp.effect{Id:5b} run function tcc:item/obsidian_mirror/add_effect/amplified/weakness
# instant health - denied
# instant damage - denied
execute if data storage tcc:storage root.temp.effect{Id:8b} run function tcc:item/obsidian_mirror/add_effect/amplified/slowness
execute if data storage tcc:storage root.temp.effect{Id:9b} run function tcc:item/obsidian_mirror/add_effect/normal/night_vision
execute if data storage tcc:storage root.temp.effect{Id:10b} run function tcc:item/obsidian_mirror/add_effect/amplified/poison
execute if data storage tcc:storage root.temp.effect{Id:11b} run function tcc:item/obsidian_mirror/add_effect/amplified/wither
execute if data storage tcc:storage root.temp.effect{Id:12b} run function tcc:item/obsidian_mirror/add_effect/normal/water_breathing
execute if data storage tcc:storage root.temp.effect{Id:13b} run function tcc:item/obsidian_mirror/add_effect/normal/fire_resistance
execute if data storage tcc:storage root.temp.effect{Id:14b} run function tcc:item/obsidian_mirror/add_effect/normal/glowing
execute if data storage tcc:storage root.temp.effect{Id:15b} run function tcc:item/obsidian_mirror/add_effect/normal/night_vision
execute if data storage tcc:storage root.temp.effect{Id:16b} run function tcc:item/obsidian_mirror/add_effect/normal/blindness
execute if data storage tcc:storage root.temp.effect{Id:17b} run effect give @s minecraft:saturation 1 1 true
execute if data storage tcc:storage root.temp.effect{Id:18b} run function tcc:item/obsidian_mirror/add_effect/amplified/strength
execute if data storage tcc:storage root.temp.effect{Id:19b} run function tcc:item/obsidian_mirror/add_effect/amplified/regeneration
execute if data storage tcc:storage root.temp.effect{Id:20b} run function tcc:item/obsidian_mirror/add_effect/amplified/regeneration
execute if data storage tcc:storage root.temp.effect{Id:21b} run function tcc:item/obsidian_mirror/add_effect/amplified/poison
execute if data storage tcc:storage root.temp.effect{Id:22b} run function tcc:item/obsidian_mirror/add_effect/amplified/poison
# saturation - denied
execute if data storage tcc:storage root.temp.effect{Id:24b} run function tcc:item/obsidian_mirror/add_effect/normal/invisibility
execute if data storage tcc:storage root.temp.effect{Id:25b} run function tcc:item/obsidian_mirror/add_effect/normal/slow_falling
execute if data storage tcc:storage root.temp.effect{Id:26b} run function tcc:item/obsidian_mirror/add_effect/normal/bad_luck
execute if data storage tcc:storage root.temp.effect{Id:27b} run function tcc:item/obsidian_mirror/add_effect/normal/luck
execute if data storage tcc:storage root.temp.effect{Id:28b} run function tcc:item/obsidian_mirror/add_effect/normal/levitation
# conduit power - denied
execute if data storage tcc:storage root.temp.effect{Id:30b} run function tcc:item/obsidian_mirror/add_effect/amplified/slowness
# bad omen - denied
# hero of the village - denied
