# Ten-second-clocks a wandering witch

execute store result score @s tcc.dummy run data get entity @s DespawnDelay
execute if entity @s[scores={tcc.dummy=..200}] run function tcc:entity/wandering_witch/despawn_entity