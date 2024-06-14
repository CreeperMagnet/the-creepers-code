# Functions to run off of crown every 10s

execute positioned ~-50 ~-5 ~-50 as @a[gamemode=!spectator,dx=100,dz=100,dy=18,predicate=tcc:location_check/in_jungle_temple,tag=!tcc.tea.vitality] at @s run function tcc:entity/persistent_cursed_crown/mining_fatigue
data modify entity @s Age set value -32767s