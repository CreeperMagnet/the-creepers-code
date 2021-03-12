############################################################
# Description: Second-clocks a living entity with a wandering trader base
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.iceologer,tag=!tcc.iceologer.casting] if entity @e[gamemode=!creative,gamemode=!spectator,distance=..16,type=player] run function tcc:entity/iceologer/line_of_sight/start
execute if entity @s[tag=tcc.iceologer,tag=tcc.iceologer.casting] run function tcc:entity/iceologer/spell_cast
execute if entity @s[tag=tcc.geomancer,tag=!tcc.geomancer.casting] if entity @e[gamemode=!creative,gamemode=!spectator,distance=..10,type=player] run function tcc:entity/geomancer/line_of_sight/start
execute if entity @s[tag=tcc.geomancer,tag=tcc.geomancer.casting] run function tcc:entity/geomancer/spell_cast
execute if entity @s[tag=tcc.enchanter,tag=!tcc.enchanter.casting,predicate=tcc:chance/one_fifth] if entity @e[team=tcc.antivillager,distance=..10,sort=arbitrary,tag=!tcc.enchanter,predicate=tcc:global.ignore,nbt=!{ActiveEffects:[{Ambient:1b}]}] run function tcc:entity/enchanter/spell_start
execute if entity @s[tag=tcc.enchanter,tag=tcc.enchanter.casting] run function tcc:entity/enchanter/spell_cycle
execute if entity @s[tag=tcc.witch_trader] unless entity @a[predicate=tcc:holding/wearing_witch_hat,distance=..10] run function tcc:entity/witch/switch_to_witch

effect give @s invisibility 100 0 true
data remove entity @s[tag=!tcc.witch_trader] Offers.Recipes
execute if data entity @s ActiveEffects[{Id:24b}] run data modify entity @s Glowing set value 1b
execute if entity @s[nbt={Glowing:1b}] unless data entity @s ActiveEffects[{Id:24b}] run data modify entity @s Glowing set value 0b
execute if entity @s[predicate=tcc:chance/three_twentieths] run function tcc:entity/trader_entity/sounds/ambient
data modify entity @s[predicate=tcc:wandering_trader_night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[predicate=!tcc:wandering_trader_night,nbt=!{DeathTime:19s}] DeathTime set value 19s