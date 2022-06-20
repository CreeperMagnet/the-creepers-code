############################################################
# Finds the proper potion effect to add
############################################################

execute if data storage tcc:storage root.temp.effect{Id:1} run function tcc:item/molten_mirror/add_effect/amplified/slowness
execute if data storage tcc:storage root.temp.effect{Id:2} run function tcc:item/molten_mirror/add_effect/amplified/speed
execute if data storage tcc:storage root.temp.effect{Id:3} run function tcc:item/molten_mirror/add_effect/amplified/mining_fatigue
execute if data storage tcc:storage root.temp.effect{Id:4} run function tcc:item/molten_mirror/add_effect/amplified/haste
execute if data storage tcc:storage root.temp.effect{Id:5} run function tcc:item/molten_mirror/add_effect/amplified/weakness
# instant health - denied
# instant damage - denied
execute if data storage tcc:storage root.temp.effect{Id:8} run function tcc:item/molten_mirror/add_effect/amplified/slowness
execute if data storage tcc:storage root.temp.effect{Id:9} run function tcc:item/molten_mirror/add_effect/normal/night_vision
execute if data storage tcc:storage root.temp.effect{Id:10} run function tcc:item/molten_mirror/add_effect/amplified/poison
execute if data storage tcc:storage root.temp.effect{Id:11} run function tcc:item/molten_mirror/add_effect/amplified/wither
execute if data storage tcc:storage root.temp.effect{Id:12} run function tcc:item/molten_mirror/add_effect/normal/water_breathing
execute if data storage tcc:storage root.temp.effect{Id:13} run function tcc:item/molten_mirror/add_effect/normal/fire_resistance
execute if data storage tcc:storage root.temp.effect{Id:14} run function tcc:item/molten_mirror/add_effect/normal/glowing
execute if data storage tcc:storage root.temp.effect{Id:15} run function tcc:item/molten_mirror/add_effect/normal/night_vision
execute if data storage tcc:storage root.temp.effect{Id:16} run function tcc:item/molten_mirror/add_effect/normal/blindness
execute if data storage tcc:storage root.temp.effect{Id:17} run effect give @s minecraft:saturation 1 1 true
execute if data storage tcc:storage root.temp.effect{Id:18} run function tcc:item/molten_mirror/add_effect/amplified/strength
execute if data storage tcc:storage root.temp.effect{Id:19} run function tcc:item/molten_mirror/add_effect/amplified/regeneration
execute if data storage tcc:storage root.temp.effect{Id:20} run function tcc:item/molten_mirror/add_effect/amplified/regeneration
execute if data storage tcc:storage root.temp.effect{Id:21} run function tcc:item/molten_mirror/add_effect/amplified/poison
execute if data storage tcc:storage root.temp.effect{Id:22} run function tcc:item/molten_mirror/add_effect/amplified/poison
# saturation - denied
execute if data storage tcc:storage root.temp.effect{Id:24} run function tcc:item/molten_mirror/add_effect/normal/invisibility
execute if data storage tcc:storage root.temp.effect{Id:25} run function tcc:item/molten_mirror/add_effect/normal/slow_falling
execute if data storage tcc:storage root.temp.effect{Id:26} run function tcc:item/molten_mirror/add_effect/normal/unluck
execute if data storage tcc:storage root.temp.effect{Id:27} run function tcc:item/molten_mirror/add_effect/normal/luck
execute if data storage tcc:storage root.temp.effect{Id:28} run function tcc:item/molten_mirror/add_effect/normal/levitation
# conduit power - denied
execute if data storage tcc:storage root.temp.effect{Id:30} run function tcc:item/molten_mirror/add_effect/amplified/slowness
# bad omen - denied
# hero of the village - denied
execute if data storage tcc:storage root.temp.effect{Id:33} run function tcc:item/molten_mirror/add_effect/normal/night_vision