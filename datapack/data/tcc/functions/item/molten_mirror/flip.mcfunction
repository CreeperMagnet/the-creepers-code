############################################################
# Flips effects and damages mirror
############################################################

playsound tcc:item.molten_mirror.use player @s ~ ~ ~ 10000 0
scoreboard players set #item_durability_change tcc.dummy 0
execute if data storage tcc:storage root.temp.effects[{Id:1b}] run effect clear @s speed
execute if data storage tcc:storage root.temp.effects[{Id:2b}] run effect clear @s slowness
execute if data storage tcc:storage root.temp.effects[{Id:3b}] run effect clear @s haste
execute if data storage tcc:storage root.temp.effects[{Id:4b}] run effect clear @s mining_fatigue
execute if data storage tcc:storage root.temp.effects[{Id:5b}] run effect clear @s strength


execute if data storage tcc:storage root.temp.effects[{Id:8b}] run effect clear @s jump_boost
execute if data storage tcc:storage root.temp.effects[{Id:9b}] run effect clear @s nausea
execute if data storage tcc:storage root.temp.effects[{Id:10b}] run effect clear @s regeneration
execute if data storage tcc:storage root.temp.effects[{Id:11b}] run effect clear @s resistance
execute if data storage tcc:storage root.temp.effects[{Id:12b}] run effect clear @s fire_resistance
execute if data storage tcc:storage root.temp.effects[{Id:13b}] run effect clear @s water_breathing
execute if data storage tcc:storage root.temp.effects[{Id:14b}] run effect clear @s invisibility
execute if data storage tcc:storage root.temp.effects[{Id:15b}] run effect clear @s blindness
execute if data storage tcc:storage root.temp.effects[{Id:16b}] run effect clear @s night_vision
execute if data storage tcc:storage root.temp.effects[{Id:17b}] run effect clear @s hunger
execute if data storage tcc:storage root.temp.effects[{Id:18b}] run effect clear @s weakness
execute if data storage tcc:storage root.temp.effects[{Id:19b}] run effect clear @s poison
execute if data storage tcc:storage root.temp.effects[{Id:20b}] run effect clear @s wither
execute if data storage tcc:storage root.temp.effects[{Id:21b}] run effect clear @s health_boost
execute if data storage tcc:storage root.temp.effects[{Id:22b}] run effect clear @s absorption

execute if data storage tcc:storage root.temp.effects[{Id:24b}] run effect clear @s glowing
execute if data storage tcc:storage root.temp.effects[{Id:25b}] run effect clear @s levitation
execute if data storage tcc:storage root.temp.effects[{Id:26b}] run effect clear @s luck
execute if data storage tcc:storage root.temp.effects[{Id:27b}] run effect clear @s unluck
execute if data storage tcc:storage root.temp.effects[{Id:28b}] run effect clear @s slow_falling

execute if data storage tcc:storage root.temp.effects[{Id:30b}] run effect clear @s dolphins_grace


function tcc:item/molten_mirror/iterate
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"molten_mirror"}}}}] run function tcc:item/durability/slots/mainhand
execute if entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{tcc:{id:"molten_mirror"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"molten_mirror"}}}]}] run function tcc:item/durability/slots/offhand
advancement grant @s only tcc:minecraft/nether/molten_mirror
