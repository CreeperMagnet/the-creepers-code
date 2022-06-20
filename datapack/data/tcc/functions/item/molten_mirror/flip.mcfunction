############################################################
# Flips effects and damages mirror
############################################################

playsound tcc:item.molten_mirror.use player @a[distance=..16] ~ ~ ~
scoreboard players set #item_durability_change tcc.dummy 0
execute if data storage tcc:storage root.temp.effects[{Id:1}] run effect clear @s speed
execute if data storage tcc:storage root.temp.effects[{Id:2}] run effect clear @s slowness
execute if data storage tcc:storage root.temp.effects[{Id:3}] run effect clear @s haste
execute if data storage tcc:storage root.temp.effects[{Id:4}] run effect clear @s mining_fatigue
execute if data storage tcc:storage root.temp.effects[{Id:5}] run effect clear @s strength


execute if data storage tcc:storage root.temp.effects[{Id:8}] run effect clear @s jump_boost
execute if data storage tcc:storage root.temp.effects[{Id:9}] run effect clear @s nausea
execute if data storage tcc:storage root.temp.effects[{Id:10}] run effect clear @s regeneration
execute if data storage tcc:storage root.temp.effects[{Id:11}] run effect clear @s resistance
execute if data storage tcc:storage root.temp.effects[{Id:12}] run effect clear @s fire_resistance
execute if data storage tcc:storage root.temp.effects[{Id:13}] run effect clear @s water_breathing
execute if data storage tcc:storage root.temp.effects[{Id:14}] run effect clear @s invisibility
execute if data storage tcc:storage root.temp.effects[{Id:15}] run effect clear @s blindness
execute if data storage tcc:storage root.temp.effects[{Id:16}] run effect clear @s night_vision
execute if data storage tcc:storage root.temp.effects[{Id:17}] run effect clear @s hunger
execute if data storage tcc:storage root.temp.effects[{Id:18}] run effect clear @s weakness
execute if data storage tcc:storage root.temp.effects[{Id:19}] run effect clear @s poison
execute if data storage tcc:storage root.temp.effects[{Id:20}] run effect clear @s wither
execute if data storage tcc:storage root.temp.effects[{Id:21}] run effect clear @s health_boost
execute if data storage tcc:storage root.temp.effects[{Id:22}] run effect clear @s absorption

execute if data storage tcc:storage root.temp.effects[{Id:24}] run effect clear @s glowing
execute if data storage tcc:storage root.temp.effects[{Id:25}] run effect clear @s levitation
execute if data storage tcc:storage root.temp.effects[{Id:26}] run effect clear @s luck
execute if data storage tcc:storage root.temp.effects[{Id:27}] run effect clear @s unluck
execute if data storage tcc:storage root.temp.effects[{Id:28}] run effect clear @s slow_falling

execute if data storage tcc:storage root.temp.effects[{Id:30}] run effect clear @s dolphins_grace


execute if data storage tcc:storage root.temp.effects[{Id:33}] run effect clear @s darkness

function tcc:item/molten_mirror/iterate
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"molten_mirror"}}}}] run function tcc:item/durability/slots/mainhand
execute if entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{tcc:{id:"molten_mirror"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"molten_mirror"}}}]}] run function tcc:item/durability/slots/offhand
advancement grant @s only tcc:minecraft/nether/molten_mirror
