############################################################
# Second-clocks an illager
############################################################

execute on attacker run tag @s[type=!player] add tcc.illager_target
execute if entity @s[tag=!tcc.spellcasting] unless entity @s[tag=!tcc.iceologer,tag=!tcc.geomancer] if entity @e[predicate=tcc:entity/illager_target,limit=1,distance=..16,sort=nearest] run function tcc:entity/illager/line_of_sight
execute if entity @s[tag=tcc.iceologer,tag=tcc.spellcasting] run function tcc:entity/iceologer/spell_cast
execute if entity @s[tag=tcc.geomancer,tag=tcc.spellcasting] run function tcc:entity/geomancer/spell_cast
execute if entity @s[tag=tcc.enchanter,tag=!tcc.spellcasting,predicate=tcc:chance/one_fifth] if entity @e[predicate=tcc:entity/enchanter_affected,tag=!tcc.enchanter,nbt=!{ActiveEffects:[{Ambient:1b}]},distance=..10] run function tcc:entity/enchanter/spell_start
execute if entity @s[tag=tcc.enchanter,tag=tcc.spellcasting] run function tcc:entity/enchanter/spell_cycle

execute if data entity @s ActiveEffects[{Id:24}] run data modify entity @s Glowing set value 1b
execute if entity @s[nbt={Glowing:1b}] unless data entity @s ActiveEffects[{Id:24}] run data modify entity @s Glowing set value 0b

execute if entity @s[tag=!tcc.enchanter] if score #difficulty tcc.dummy matches 0 run tp ~ -1000 ~