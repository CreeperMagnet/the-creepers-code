############################################################
# Second-clocks an illager
############################################################

execute if entity @s[tag=tcc.iceologer,tag=!tcc.spellcasting] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16,nbt=!{Health:0.0f}] run function tcc:entity/iceologer/line_of_sight
execute if entity @s[tag=tcc.iceologer,tag=tcc.spellcasting] run function tcc:entity/iceologer/spell_cast
execute if entity @s[tag=tcc.geomancer,tag=!tcc.spellcasting] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16,nbt=!{Health:0.0f}] run function tcc:entity/geomancer/line_of_sight
execute if entity @s[tag=tcc.geomancer,tag=tcc.spellcasting] run function tcc:entity/geomancer/spell_cast
execute if entity @s[tag=tcc.enchanter,tag=!tcc.spellcasting,predicate=tcc:chance/one_fifth] if entity @e[predicate=tcc:entity/enchanter_affected,tag=!tcc.enchanter,nbt=!{ActiveEffects:[{Ambient:1b}]},distance=..10] run function tcc:entity/enchanter/spell_start
execute if entity @s[tag=tcc.enchanter,tag=tcc.spellcasting] run function tcc:entity/enchanter/spell_cycle

execute if data entity @s ActiveEffects[{Id:24b}] run data modify entity @s Glowing set value 1b
execute if entity @s[nbt={Glowing:1b}] unless data entity @s ActiveEffects[{Id:24b}] run data modify entity @s Glowing set value 0b
