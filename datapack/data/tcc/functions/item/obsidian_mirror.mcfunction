############################################################
# Description: Makes obsidian mirrors flip effects
# Creator: CreeperMagnet_
############################################################

## two-way effects
# [speed - slowness]
# [haste - mining fatigue]
# [strength - weakness]
# [blindness - night vision]
# [regeneration - poison]
# [hunger - saturation]
# [glowing - invisibility]
# [levitation - slow falling]
# [luck - bad luck]
# [fire resistance - water breathing]

## one-way effects
# jump boost - slowness
# nausea - night vision
# dolphin's grace - slowness
# wither - regeneration
# health boost - poison
# absorption - poison
# resistance - poison

## Forbidden effects
# conduit power - beacony effect
# instant health - instant damage no flipping instants
# bad omen - hero of the village overpowered


scoreboard players reset @s tcc.dummy
execute store result score @s[nbt={ActiveEffects:[{Id:20b,Amplifier:0b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:20b}].Duration
effect give @s[scores={tcc.dummy=..300}] regeneration 15 0
effect give @s[scores={tcc.dummy=300..600}] regeneration 30 0
effect give @s[scores={tcc.dummy=600..1200}] regeneration 45 0
effect give @s[scores={tcc.dummy=1200..}] regeneration 60 0
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:20b,Amplifier:1b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:20b}].Duration
effect give @s[scores={tcc.dummy=..300}] regeneration 15 1
effect give @s[scores={tcc.dummy=300..600}] regeneration 30 1
effect give @s[scores={tcc.dummy=600..1200}] regeneration 45 1
effect give @s[scores={tcc.dummy=1200..}] regeneration 60 1
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:19b,Amplifier:0b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:19b}].Duration
effect give @s[scores={tcc.dummy=..300}] regeneration 15 0
effect give @s[scores={tcc.dummy=300..600}] regeneration 30 0
effect give @s[scores={tcc.dummy=600..1200}] regeneration 45 0
effect give @s[scores={tcc.dummy=1200..}] regeneration 60 0
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:19b,Amplifier:3b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:19b}].Duration
effect give @s[scores={tcc.dummy=..300}] regeneration 15 3
effect give @s[scores={tcc.dummy=300..600}] regeneration 30 3
effect give @s[scores={tcc.dummy=600..1200}] regeneration 45 3
effect give @s[scores={tcc.dummy=1200..}] regeneration 60 3
scoreboard players reset @s tcc.dummy


execute store result score @s[nbt={ActiveEffects:[{Id:2b,Amplifier:0b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:2b}].Duration
effect give @s[scores={tcc.dummy=..300}] speed 15
effect give @s[scores={tcc.dummy=300..600}] speed 30
effect give @s[scores={tcc.dummy=600..1200}] speed 45
effect give @s[scores={tcc.dummy=1200..1500}] speed 60
effect give @s[scores={tcc.dummy=1500..1800}] speed 75
effect give @s[scores={tcc.dummy=1800..2100}] speed 90
effect give @s[scores={tcc.dummy=2100..2400}] speed 105
effect give @s[scores={tcc.dummy=2400..2700}] speed 120
effect give @s[scores={tcc.dummy=2700..3000}] speed 135
effect give @s[scores={tcc.dummy=3000..3300}] speed 150
effect give @s[scores={tcc.dummy=3300..3600}] speed 165
effect give @s[scores={tcc.dummy=3600..3900}] speed 180
effect give @s[scores={tcc.dummy=3900..4200}] speed 195
effect give @s[scores={tcc.dummy=4200..4500}] speed 210
effect give @s[scores={tcc.dummy=4500..4800}] speed 225
effect give @s[scores={tcc.dummy=4800..5100}] speed 240
effect give @s[scores={tcc.dummy=5100..5400}] speed 255
effect give @s[scores={tcc.dummy=5400..5700}] speed 270
effect give @s[scores={tcc.dummy=5700..6000}] speed 285
effect give @s[scores={tcc.dummy=6000..}] speed 300
scoreboard players reset @s tcc.dummy

# special case for frostbloom petals :wai:
execute store result score @s[nbt={ActiveEffects:[{Id:2b,Amplifier:1b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:2b}].Duration
effect give @s[scores={tcc.dummy=..300}] speed 15 1
effect give @s[scores={tcc.dummy=300..600}] speed 30 1
title @s[tag=!global.ignore.gui,scores={tcc.dummy=..600}] times 0 0 10
title @s[tag=!global.ignore.gui,scores={tcc.dummy=..600}] title {"translate":"entity.tcc.iceologer.ice_overlay","font":"tcc:iceologer_ice"}
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:2b,Amplifier:3b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:2b}].Duration
effect give @s[scores={tcc.dummy=..300}] speed 15 3
effect give @s[scores={tcc.dummy=300..600}] speed 30 3
effect give @s[scores={tcc.dummy=600..1200}] speed 45 3
effect give @s[scores={tcc.dummy=1200..1500}] speed 60 3
effect give @s[scores={tcc.dummy=1500..1800}] speed 75 3
effect give @s[scores={tcc.dummy=1800..2100}] speed 90 3
effect give @s[scores={tcc.dummy=2100..2400}] speed 105 3
effect give @s[scores={tcc.dummy=2400..2700}] speed 120 3
effect give @s[scores={tcc.dummy=2700..3000}] speed 135 3
effect give @s[scores={tcc.dummy=3000..3300}] speed 150 3
effect give @s[scores={tcc.dummy=3300..3600}] speed 165 3
effect give @s[scores={tcc.dummy=3600..3900}] speed 180 3
effect give @s[scores={tcc.dummy=3900..4200}] speed 195 3
effect give @s[scores={tcc.dummy=4200..4500}] speed 210 3
effect give @s[scores={tcc.dummy=4500..4800}] speed 225 3
effect give @s[scores={tcc.dummy=4800..5100}] speed 240 3
effect give @s[scores={tcc.dummy=5100..5400}] speed 255 3
effect give @s[scores={tcc.dummy=5400..5700}] speed 270 3
effect give @s[scores={tcc.dummy=5700..6000}] speed 285 3
effect give @s[scores={tcc.dummy=6000..}] speed 300 3
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:2b}].Duration
effect give @s[scores={tcc.dummy=..300}] speed 15 5
effect give @s[scores={tcc.dummy=300..600}] speed 30 5
effect give @s[scores={tcc.dummy=600..1200}] speed 45 5
effect give @s[scores={tcc.dummy=1200..1500}] speed 60 5
effect give @s[scores={tcc.dummy=1500..1800}] speed 75 5
effect give @s[scores={tcc.dummy=1800..2100}] speed 90 5
effect give @s[scores={tcc.dummy=2100..2400}] speed 105 5
effect give @s[scores={tcc.dummy=2400..2700}] speed 120 5
effect give @s[scores={tcc.dummy=2700..3000}] speed 135 5
effect give @s[scores={tcc.dummy=3000..3300}] speed 150 5
effect give @s[scores={tcc.dummy=3300..3600}] speed 165 5
effect give @s[scores={tcc.dummy=3600..3900}] speed 180 5
effect give @s[scores={tcc.dummy=3900..4200}] speed 195 5
effect give @s[scores={tcc.dummy=4200..4500}] speed 210 5
effect give @s[scores={tcc.dummy=4500..4800}] speed 225 5
effect give @s[scores={tcc.dummy=4800..5100}] speed 240 5
effect give @s[scores={tcc.dummy=5100..5400}] speed 255 5
effect give @s[scores={tcc.dummy=5400..5700}] speed 270 5
effect give @s[scores={tcc.dummy=5700..6000}] speed 285 5
effect give @s[scores={tcc.dummy=6000..}] speed 300 5
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:18b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:18b}].Duration
effect give @s[scores={tcc.dummy=..300}] strength 15 0
effect give @s[scores={tcc.dummy=300..600}] strength 30 0
effect give @s[scores={tcc.dummy=600..1200}] strength 45 0
effect give @s[scores={tcc.dummy=1200..1500}] strength 60 0
effect give @s[scores={tcc.dummy=1500..1800}] strength 75 0
effect give @s[scores={tcc.dummy=1800..2100}] strength 90 0
effect give @s[scores={tcc.dummy=2100..2400}] strength 105 0
effect give @s[scores={tcc.dummy=2400..2700}] strength 120 0
effect give @s[scores={tcc.dummy=2700..3000}] strength 135 0
effect give @s[scores={tcc.dummy=3000..3300}] strength 150 0
effect give @s[scores={tcc.dummy=3300..3600}] strength 165 0
effect give @s[scores={tcc.dummy=3600..}] strength 180 0
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:9b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:9b}].Duration
effect give @s[scores={tcc.dummy=..300}] night_vision 15 0
effect give @s[scores={tcc.dummy=300..600}] night_vision 30 0
effect give @s[scores={tcc.dummy=600..1200}] night_vision 45 0
effect give @s[scores={tcc.dummy=1200..1500}] night_vision 60 0
effect give @s[scores={tcc.dummy=1500..1800}] night_vision 75 0
effect give @s[scores={tcc.dummy=1800..2100}] night_vision 90 0
effect give @s[scores={tcc.dummy=2100..2400}] night_vision 105 0
effect give @s[scores={tcc.dummy=2400..2700}] night_vision 120 0
effect give @s[scores={tcc.dummy=2700..3000}] night_vision 135 0
effect give @s[scores={tcc.dummy=3000..3300}] night_vision 150 0
effect give @s[scores={tcc.dummy=3300..3600}] night_vision 165 0
effect give @s[scores={tcc.dummy=3600..}] night_vision 180 0
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:15b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:15b}].Duration
effect give @s[scores={tcc.dummy=..300}] night_vision 15 0
effect give @s[scores={tcc.dummy=300..600}] night_vision 30 0
effect give @s[scores={tcc.dummy=600..1200}] night_vision 45 0
effect give @s[scores={tcc.dummy=1200..1500}] night_vision 60 0
effect give @s[scores={tcc.dummy=1500..1800}] night_vision 75 0
effect give @s[scores={tcc.dummy=1800..2100}] night_vision 90 0
effect give @s[scores={tcc.dummy=2100..2400}] night_vision 105 0
effect give @s[scores={tcc.dummy=2400..2700}] night_vision 120 0
effect give @s[scores={tcc.dummy=2700..3000}] night_vision 135 0
effect give @s[scores={tcc.dummy=3000..3300}] night_vision 150 0
effect give @s[scores={tcc.dummy=3300..3600}] night_vision 165 0
effect give @s[scores={tcc.dummy=3600..}] night_vision 180 0
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:4b,Amplifier:2b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:4b}].Duration
effect give @s[scores={tcc.dummy=..300}] haste 15 2
effect give @s[scores={tcc.dummy=300..600}] haste 30 2
effect give @s[scores={tcc.dummy=600..1200}] haste 45 2
effect give @s[scores={tcc.dummy=1200..1500}] haste 60 2
effect give @s[scores={tcc.dummy=1500..1800}] haste 75 2
effect give @s[scores={tcc.dummy=1800..2100}] haste 90 2
effect give @s[scores={tcc.dummy=2100..2400}] haste 105 2
effect give @s[scores={tcc.dummy=2400..2700}] haste 120 2
effect give @s[scores={tcc.dummy=2700..3000}] haste 135 2
effect give @s[scores={tcc.dummy=3000..3300}] haste 150 2
effect give @s[scores={tcc.dummy=3300..3600}] haste 165 2
effect give @s[scores={tcc.dummy=3600..3900}] haste 180 2
effect give @s[scores={tcc.dummy=3900..4200}] haste 195 2
effect give @s[scores={tcc.dummy=4200..4500}] haste 210 2
effect give @s[scores={tcc.dummy=4500..4800}] haste 225 2
effect give @s[scores={tcc.dummy=4800..5100}] haste 240 2
effect give @s[scores={tcc.dummy=5100..5400}] haste 255 2
effect give @s[scores={tcc.dummy=5400..5700}] haste 270 2
effect give @s[scores={tcc.dummy=5700..6000}] haste 285 2
effect give @s[scores={tcc.dummy=6000..}] haste 300 2
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:27b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:27b}].Duration
effect give @s[scores={tcc.dummy=..300}] luck 15
effect give @s[scores={tcc.dummy=300..600}] luck 30
effect give @s[scores={tcc.dummy=600..1200}] luck 45
effect give @s[scores={tcc.dummy=1200..1500}] luck 60
effect give @s[scores={tcc.dummy=1500..1800}] luck 75
effect give @s[scores={tcc.dummy=1800..2100}] luck 90
effect give @s[scores={tcc.dummy=2100..2400}] luck 105
effect give @s[scores={tcc.dummy=2400..2700}] luck 120
effect give @s[scores={tcc.dummy=2700..3000}] luck 135
effect give @s[scores={tcc.dummy=3000..3300}] luck 150
effect give @s[scores={tcc.dummy=3300..3600}] luck 165
effect give @s[scores={tcc.dummy=3600..3900}] luck 180
effect give @s[scores={tcc.dummy=3900..4200}] luck 195
effect give @s[scores={tcc.dummy=4200..4500}] luck 210
effect give @s[scores={tcc.dummy=4500..4800}] luck 225
effect give @s[scores={tcc.dummy=4800..5100}] luck 240
effect give @s[scores={tcc.dummy=5100..5400}] luck 255
effect give @s[scores={tcc.dummy=5400..5700}] luck 270
effect give @s[scores={tcc.dummy=5700..6000}] luck 285
effect give @s[scores={tcc.dummy=6000..}] luck 300
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:25b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:25b}].Duration
effect give @s[scores={tcc.dummy=..300}] slow_falling 15
effect give @s[scores={tcc.dummy=300..600}] slow_falling 30
effect give @s[scores={tcc.dummy=600..1200}] slow_falling 45
effect give @s[scores={tcc.dummy=1200..1500}] slow_falling 60
effect give @s[scores={tcc.dummy=1500..1800}] slow_falling 75
effect give @s[scores={tcc.dummy=1800..2100}] slow_falling 90
effect give @s[scores={tcc.dummy=2100..2400}] slow_falling 105
effect give @s[scores={tcc.dummy=2400..2700}] slow_falling 120
effect give @s[scores={tcc.dummy=2700..3000}] slow_falling 135
effect give @s[scores={tcc.dummy=3000..3300}] slow_falling 150
effect give @s[scores={tcc.dummy=3300..3600}] slow_falling 165
effect give @s[scores={tcc.dummy=3600..3900}] slow_falling 180
effect give @s[scores={tcc.dummy=3900..4200}] slow_falling 195
effect give @s[scores={tcc.dummy=4200..4500}] slow_falling 210
effect give @s[scores={tcc.dummy=4500..4800}] slow_falling 225
effect give @s[scores={tcc.dummy=4800..5100}] slow_falling 240
effect give @s[scores={tcc.dummy=5100..5400}] slow_falling 255
effect give @s[scores={tcc.dummy=5400..5700}] slow_falling 270
effect give @s[scores={tcc.dummy=5700..6000}] slow_falling 285
effect give @s[scores={tcc.dummy=6000..}] slow_falling 300
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:24b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:24b}].Duration
effect give @s[scores={tcc.dummy=..300}] invisibility 15
effect give @s[scores={tcc.dummy=300..600}] invisibility 30
effect give @s[scores={tcc.dummy=600..1200}] invisibility 45
effect give @s[scores={tcc.dummy=1200..1500}] invisibility 60
effect give @s[scores={tcc.dummy=1500..1800}] invisibility 75
effect give @s[scores={tcc.dummy=1800..2100}] invisibility 90
effect give @s[scores={tcc.dummy=2100..2400}] invisibility 105
effect give @s[scores={tcc.dummy=2400..2700}] invisibility 120
effect give @s[scores={tcc.dummy=2700..3000}] invisibility 135
effect give @s[scores={tcc.dummy=3000..3300}] invisibility 150
effect give @s[scores={tcc.dummy=3300..3600}] invisibility 165
effect give @s[scores={tcc.dummy=3600..3900}] invisibility 180
effect give @s[scores={tcc.dummy=3900..4200}] invisibility 195
effect give @s[scores={tcc.dummy=4200..4500}] invisibility 210
effect give @s[scores={tcc.dummy=4500..4800}] invisibility 225
effect give @s[scores={tcc.dummy=4800..5100}] invisibility 240
effect give @s[scores={tcc.dummy=5100..5400}] invisibility 255
effect give @s[scores={tcc.dummy=5400..5700}] invisibility 270
effect give @s[scores={tcc.dummy=5700..6000}] invisibility 285
effect give @s[scores={tcc.dummy=6000..}] invisibility 300
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:17b,Amplifier:0b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:17b}].Duration
effect give @s[scores={tcc.dummy=..6000}] saturation 1 5
effect give @s[scores={tcc.dummy=6000..}] saturation 1 5
scoreboard players reset @s tcc.dummy

execute store result score @s[nbt={ActiveEffects:[{Id:17b,Amplifier:2b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:17b}].Duration
effect give @s[scores={tcc.dummy=..6000}] saturation 1 7
effect give @s[scores={tcc.dummy=6000..}] saturation 1 7
scoreboard players reset @s tcc.dummy


playsound tcc:item.obsidian_mirror.use player @s ~ ~ ~ 10000 0
scoreboard players reset @s tcc.dummy2
scoreboard players add @s[nbt={ActiveEffects:[{Id:18b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:3b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:3b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:3b}]}] tcc.dummy2 1

scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:2b,Amplifier:5b}]}] tcc.dummy2 1

scoreboard players add @s[nbt={ActiveEffects:[{Id:17b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:17b,Amplifier:2b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:17b,Amplifier:2b}]}] tcc.dummy2 1

scoreboard players add @s[nbt={ActiveEffects:[{Id:4b,Amplifier:2b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:4b,Amplifier:2b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:4b,Amplifier:2b}]}] tcc.dummy2 1

scoreboard players add @s[nbt={ActiveEffects:[{Id:20b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:20b,Amplifier:1b}]}] tcc.dummy2 1


scoreboard players add @s[nbt={ActiveEffects:[{Id:19b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:19b,Amplifier:3b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:19b,Amplifier:3b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:19b,Amplifier:3b}]}] tcc.dummy2 1



scoreboard players add @s[nbt={ActiveEffects:[{Id:9b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:9b,Amplifier:1b}]}] tcc.dummy2 1


scoreboard players add @s[nbt={ActiveEffects:[{Id:15b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:25b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:24b}]}] tcc.dummy2 1
scoreboard players add @s[nbt={ActiveEffects:[{Id:27b}]}] tcc.dummy2 1

execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"obsidian_mirror"}}}}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"obsidian_mirror"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"obsidian_mirror"}}}]}] run function tcc:item/item_modification/durability/damage/offhand
advancement grant @s only tcc:minecraft/story/obsidian_mirror


# bad omen goes here? no, too op to flip into hero of village
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s wither
effect clear @s poison
effect clear @s nausea
effect clear @s weakness
effect clear @s levitation
effect clear @s glowing
effect clear @s blindness
effect clear @s hunger
effect clear @s unluck
