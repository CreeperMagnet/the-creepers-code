# Functions to run off of crown every 10s

execute as @a[distance=..100,predicate=tcc:location/in_jungle_temple_basement,tag=!tcc.tea.vitality] run function tcc:entity/persistent_cursed_crown/mining_fatigue
data modify entity @s Age set value -32767s