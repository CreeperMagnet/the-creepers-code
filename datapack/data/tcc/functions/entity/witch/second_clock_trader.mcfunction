############################################################
# Functions to run off witch traders every second
############################################################

execute if entity @s[predicate=!tcc:entity/in_vehicle] if entity @a[predicate=!tcc:entity/wearing/witch_hat,distance=..10,gamemode=!spectator,gamemode=!creative] run function tcc:entity/witch/switch_to_witch/main