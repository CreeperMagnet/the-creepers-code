############################################################
# Checks if the player has a potion effect
############################################################

execute if data storage tcc:storage root.temp.item.tag.tcc.potion.no_effects run scoreboard players set @s tcc.dummy 1
execute if data storage tcc:storage root.temp.item.tag.tcc.potion.no_effects run return 0

function tcc:item/diluted_potion/apply_effect with storage tcc:storage root.temp.item.tag.tcc.potion
execute if data storage tcc:storage root.temp.item.tag.tcc.potion.effect run return 0

execute if entity @s[gamemode=!creative,nbt={HurtTime:0s}] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:harming"} run function tcc:item/diluted_potion/apply_effect/harming

execute if entity @s[gamemode=!creative] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:healing"} run function tcc:item/diluted_potion/apply_effect/healing

execute store success score @s[scores={tcc.dummy=0},nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:3b},{id:"minecraft:resistance",amplifier:2b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:turtle_master"} run function tcc:item/diluted_potion/apply_effect/turtle_master
execute store success score @s[scores={tcc.dummy=0},nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:3b},{id:"minecraft:resistance",amplifier:2b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:long_turtle_master"} run function tcc:item/diluted_potion/apply_effect/long_turtle_master
execute store success score @s[scores={tcc.dummy=0},nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:5b},{id:"minecraft:resistance",amplifier:3b}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_turtle_master"} run function tcc:item/diluted_potion/apply_effect/strong_turtle_master

execute store success score @s[scores={tcc.dummy=0},nbt=!{active_effects:[{id:"minecraft:strength",amplifier:2b},{id:"minecraft:blindness"}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run function tcc:item/diluted_potion/apply_effect/blind_rage
execute store success score @s[scores={tcc.dummy=0},nbt=!{active_effects:[{id:"minecraft:strength",amplifier:2b},{id:"minecraft:blindness"}]}] tcc.dummy if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run function tcc:item/diluted_potion/apply_effect/long_blind_rage




