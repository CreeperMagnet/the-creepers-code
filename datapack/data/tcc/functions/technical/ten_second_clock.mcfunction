############################################################
# Commands to run every ten seconds
############################################################

## As entities
execute as @e[type=#tcc:technical/ten_second_clock,tag=tcc.ten_second_clock] at @s run function tcc:entity/ten_second_clock

## Ocean monument edits generation
execute unless data storage tcc:storage root.gamerules{generateMonuments:0b} as @a[predicate=tcc:location/in_ocean] at @s positioned ~ -64 ~ align xyz unless entity @e[type=marker,tag=tcc.monument.checked_area,distance=..100] run function tcc:postgen/ocean_monument_edits/detect/check_storage

schedule function tcc:technical/ten_second_clock 10s replace
