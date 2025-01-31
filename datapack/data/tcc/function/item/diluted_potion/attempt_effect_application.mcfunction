# Checks if the player has a potion effect

execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.no_effects run scoreboard players set @s tcc.dummy 1
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.no_effects run return 0

function tcc:item/diluted_potion/apply_effect/default_macro with storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.effect run return 0

execute if entity @s[gamemode=!creative,nbt={HurtTime:0s}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"minecraft:harming"} run function tcc:item/diluted_potion/apply_effect/harming

execute if entity @s[gamemode=!creative] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"minecraft:healing"} run function tcc:item/diluted_potion/apply_effect/healing

execute if entity @s[nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:3b},{id:"minecraft:resistance",amplifier:2b}]}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"minecraft:turtle_master"} run return run function tcc:item/diluted_potion/apply_effect/turtle_master
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:3b},{id:"minecraft:resistance",amplifier:2b}]}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"minecraft:long_turtle_master"} run return run function tcc:item/diluted_potion/apply_effect/long_turtle_master
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:slowness",amplifier:5b},{id:"minecraft:resistance",amplifier:3b}]}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"minecraft:strong_turtle_master"} run return run function tcc:item/diluted_potion/apply_effect/strong_turtle_master

execute if entity @s[nbt=!{active_effects:[{id:"minecraft:strength",amplifier:4b},{id:"minecraft:blindness"}]}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run return run function tcc:item/diluted_potion/apply_effect/blind_rage
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:strength",amplifier:4b},{id:"minecraft:blindness"}]}] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:long_blind_rage"} run return run function tcc:item/diluted_potion/apply_effect/long_blind_rage




