# Second-clocks an illager

execute on attacker run tag @s[type=!minecraft:player] add tcc.illager_target
execute if entity @s[tag=!tcc.spellcasting] unless entity @s[tag=!tcc.iceologer,tag=!tcc.geomancer] if entity @e[predicate=tcc:entity/illager_target,limit=1,distance=..16,sort=nearest] run function tcc:entity/illager/line_of_sight
execute if entity @s[tag=tcc.iceologer,tag=tcc.spellcasting] run function tcc:entity/iceologer/spell_cast
execute if entity @s[tag=tcc.geomancer,tag=tcc.spellcasting] run function tcc:entity/geomancer/spell_cast
execute if entity @s[tag=tcc.enchanter,tag=!tcc.spellcasting,predicate=tcc:random_chance/0.2] if entity @e[predicate=tcc:entity/enchanter_affected,tag=!tcc.enchanter,nbt=!{active_effects:[{ambient:1b}]},distance=..10] run function tcc:entity/enchanter/spell_start
execute if entity @s[tag=tcc.enchanter,tag=tcc.spellcasting] run function tcc:entity/enchanter/spell_cycle

execute if data entity @s active_effects[{id:"minecraft:glowing"}] run data modify entity @s Glowing set value 1b
execute if entity @s[nbt={Glowing:1b}] unless data entity @s active_effects[{id:"minecraft:glowing"}] run data modify entity @s Glowing set value 0b

execute if entity @s[tag=!tcc.enchanter] if score #difficulty tcc.dummy matches 0 run tp ~ -1000 ~